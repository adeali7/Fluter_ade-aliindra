import 'package:flutter/material.dart';
import 'package:toykid/screens/cart/cart._screen.dart';


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