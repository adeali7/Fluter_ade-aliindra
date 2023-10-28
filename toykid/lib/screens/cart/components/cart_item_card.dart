import 'package:flutter/material.dart';
import 'package:toykid/model/cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key, 
    required this.cart,
  });

  final Cart cart;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(aspectRatio: 0.88,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F9),
              borderRadius: BorderRadius.circular(15),
              ),
              child:Image.asset(demoCarts[0].product.image[0]) ,

          ), 
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(
            cart.product.title, 
            style:TextStyle(
              fontSize: 16,
              color: Colors.black ), 
              maxLines: 2,
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                text: "\$${cart.product.price}",
              style: TextStyle(
               color: Colors.orange),
               children:[TextSpan(text: "x${cart.numOfItem}",
               style: TextStyle(color: Colors.black),
               )] ))
              ],
        )
      ],
    );
  }
}