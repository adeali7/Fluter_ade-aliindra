import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/details/body.dart';
import 'package:toykid/screens/home/components/rounded_icon_btn.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  
  final Product product;

  DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
      body: Body(product: product),
     
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}


class ProductDetailIsArguments {
  final Product product;

  ProductDetailIsArguments({required this.product});
}