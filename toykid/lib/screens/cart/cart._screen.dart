import 'package:flutter/material.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/model/cart.dart';
import 'package:toykid/screens/cart/components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName ="/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: buildAppBar(context),
      body: BodyCart(),
    ) ;  
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFF5F6F9),
      title: Column(
        children: [
          Text(
          "Your Cart", 
          style: TextStyle(color: Colors.black),
        ),
        Text("${demoCarts.length}items", style: TextStyle(fontSize: 16, color: Colors.grey),
        )
        ],
      ),
    );
  }
}