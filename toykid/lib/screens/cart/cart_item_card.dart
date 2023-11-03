import 'package:flutter/material.dart';
import 'package:toykid/model/cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key, // Perbaikan: Ganti super.key dengan key yang benar
    required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    print("cart:$cart");
    return Row(
  children: [
    Expanded(
      flex: 2, // Atur sesuai kebutuhan
      child: AspectRatio(
        aspectRatio: 0.88,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFF5F6F9),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(cart.product.image[0]),
        ),
      ),
    ),
    Expanded(
      flex: 3, // Atur sesuai kebutuhan
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cart.product.title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          Text.rich(
            TextSpan(
              text: "\$${cart.product.price}",
              style: TextStyle(color: Colors.orange),
              children: [
                TextSpan(
                  text: " x ${cart.numOfItem}",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);
  }
}