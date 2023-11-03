import 'package:toykid/Screens/home/categories.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/cart/cart._screen.dart';
import 'package:toykid/screens/details_product/details_screen.dart';
import 'package:toykid/screens/home/section_title.dart';




class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultpadding,
            vertical: defaultpadding * 0,
          ),
          child: Column(
            children: [
              SizedBox(height: 5),
              HomeHeader(),
              SizedBox(height: 20),
              DiscountBanner(),
              SizedBox(height: 30),
              Categories(),
              SizedBox(height: 30),
              SpecialOffers(),
              SizedBox(height: 30),
              PopularProducts(),
              
                
              
            ],
          ),
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'ToyKid',
          
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartScreen()));
          },
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10),
          
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFFFD180),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: " Hanya Hari ini\n ",
          style: TextStyle(color: Colors.green),
          children: [
            TextSpan(
              text: "CashBack 50 %", 
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              )
            )
          ]
        )
       
      ),
    );
  }
}


class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
      text: "Special for you",
      press: () {},
    ),
    SizedBox(height: 20,
    ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffer(
                image: banner,
                title: "Special Offers",
                brand: "Doll",
                press: () {},
              ),
              SpecialOffer(
                image: banner,
                title: "Special Offers",
                brand: "Car Fans",
                press: () {},
              ),
              SpecialOffer(
                image: banner,
                title: "Special Offers",
                brand: "Puzzle",
                press: () {},
              ),
              SizedBox(width:20 ,)
            ],
          ),
        ),
      ],
    );
  }
}

// class categories ada di file categories

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
    required this.title, 
    required this.image, 
    required this.brand, 
    required this.press,
  });

  final String title, image;
  final String brand;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 200,
        height: 100,
        child:  ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Row(
            children: [
              Stack(
                children: [
                  Image.asset(image,
                  fit: BoxFit.cover,
                   ),
                   Image.asset(banner, fit: BoxFit.cover,),
                   Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter ,
                        colors: [
                          Color(0xFF343434).withOpacity(0.6),
                          Color(0xFF343434).withOpacity(0.10),
                        ],
                        )
                    ),
                   ),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 15, vertical:10 ),
                     child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [TextSpan(text:"$title\n",
                        style: TextStyle(fontSize:15,
                        fontWeight: FontWeight.bold, 
                         ),
                         ),
                         TextSpan(text: "$brand "),
                         ],
                   
                     ),
                     ),
                   )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          press: () {},
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      product: demoProducts[index],
                      press: () {
                        Navigator.pushNamed(
                          context,
                          '/detail',
                          arguments: ProductDetailIsArguments(
                            product : demoProducts[index]), // Kirim produk sebagai argumen ke DetailsScreen
                        );
                      },
                    );
                  } else {
                    return SizedBox.shrink(); // Ini akan menghilangkan item yang tidak populer
                  }
                },
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, 
    this.width =140,
    this.aspectRation = 1.02,
    required this.product,
    required this.press,
  });

  final double width, aspectRation;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox (
         width: 140,
         child: Column(
           children: [
             AspectRatio(
               aspectRatio: 1.02,
               child: Container(
                 padding:EdgeInsets.all(10) ,
               decoration: BoxDecoration(
                 color: Colors.yellow[50],
                 borderRadius: BorderRadius.circular(15),
               ),
               child: Image.asset(product.image[0]),
             ),
            ),
            const SizedBox(height: 5),
            Text(product.title,
            style: TextStyle(color: Colors.black),
            maxLines: 2,
            ),
            Row(
              children: [
                Text("\$${product.price}",
                style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w600,
                 color: Colors.yellow[900],
                ),),
              ],
            )
           ],
         ),
                  ),
      ),
    );
  }
}

