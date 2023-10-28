import 'package:flutter/material.dart';
import 'package:toykid/model/cart.dart';
import 'package:toykid/screens/cart/components/cart_item_card.dart';

class BodyCart extends StatelessWidget {
  const BodyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartItemCard(cart:demoCarts[0],),
      ],
    );
  }
}

