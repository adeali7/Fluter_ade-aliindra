import 'package:flutter/material.dart';
import 'package:toykid/model/cart.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/components/default_button.dart';




class Body extends StatefulWidget {
  final Product product;

  Body({Key? key, required this.product}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: widget.product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: widget.product),
                TopRoundedContainer(color: Color(0xFFF6F7F9), 
                child: Column(
                  children: [
                    ColorDots(product: widget.product),
                    TopRoundedContainer(
                      color: Colors.white, 
                      child: Padding(
                        padding:  EdgeInsets.only(
                          left: 20,
                          right: 20,
                          ),
                        child: DefaultButton(
                          text:" Add to Cart",
                          press: () {
                           setState(() {
                            Cart newCart = Cart(
                              product: widget.product,  // Ganti dengan produk yang ingin Anda tambahkan ke keranjang
                              numOfItem: 1,  // Sesuaikan dengan jumlah item yang ingin Anda tambahkan
                              );

                              demoCarts.add(newCart);
                           });
                           
                            print("print di dalam details = $demoProducts");
                          },
                                         ),
                      ))
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int SelectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.image[SelectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.image.length,
               (index) => buildSmallPreview(index)),
          ],
        )
      ],
    );
  }

 GestureDetector buildSmallPreview(int index) {
  return GestureDetector(
    onTap: () {
      // Tambahkan logika untuk menangani pemilihan gambar di sini.
      // Anda dapat menggunakan setState untuk mengubah nilai SelectedImage.
      setState(() {
        SelectedImage = index; // Mengganti gambar yang dipilih
      });
    },
    child: Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(8),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: SelectedImage == index ? Colors.transparent : Colors.orange,
        ),
      ),
      child: Image.asset(widget.product.image[index]),
    ),
  );
}
}





class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    super.key, 
    required this.color,
    required this.child,
  });

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
         topLeft: Radius.circular(40),
         topRight: Radius.circular(40), 
        )
      ),
      child: child,
    );
  }
}



class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left:20, right: 64 ),
          child: Text(product.description,
          maxLines: 3 ,
          ),
        ),
      ],
    );
  }
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ...List.generate(product.colors.length, (index) => ColorDot(
            color: product.colors[index], isSelected: selectedColor == index,
            ),
           ),
           Spacer(),
           RoundedIconBtn(
            iconData: Icons.remove, 
            press: () {},
          ),
          SizedBox(width: 15),           
           RoundedIconBtn(
            iconData: Icons.add, 
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(right:2 ),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Colors.purple : Colors.transparent),
      ),
      child: DecoratedBox(decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key); // Perbaiki penulisan super constructor

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
        padding: EdgeInsets.zero,
        color: Colors.black,
        onPressed: press,
        icon: Icon(iconData),
      ),
    );
  }
}
