import 'package:flutter/material.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/model/cart.dart';
import 'package:toykid/screens/cart/components/body.dart';
import 'package:toykid/screens/components/default_button.dart';

class CartScreen extends StatelessWidget {
  static String routeName ="/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: buildAppBar(context),
      body: BodyCart(),
      bottomNavigationBar: CheckOurCard(),
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

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    for (Cart cart in demoCarts) {
      totalPrice += cart.product.price * cart.numOfItem;
    }

    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ]
      ),
      child: SafeArea(
        child: Column(
          children: [
            
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text : "Total :\n",
                  children: [
                    TextSpan(
                      text: "\$$totalPrice", //Tampilkan total harga
                       style: TextStyle(fontSize: 16, color: Colors.black)),
                  ]
                  ),
                  ),
                  SizedBox(
                    width: 190,
                    child: DefaultButton(text: "Check out",
                     press: () {}
                     
                     ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}