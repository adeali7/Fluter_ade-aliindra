import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, 
    this.width =140,
    this.aspectRation = 1.02,
    required this.product,
  });

  final double width, aspectRation;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
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
    );
  }
}

