import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';

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