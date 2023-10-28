import 'package:flutter/material.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/details/body.dart';
import 'package:toykid/screens/details/custom_app_bar.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  
  final Product product;

  DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    final ProductDetailIsArguments? arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailIsArguments?;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments?.product.rating ?? 0.0,),
      body: arguments?.product != null
    ? Body(product: arguments!.product)
    : Center(child: Text("Product not found")),
    );
  }
}




class ProductDetailIsArguments {
  final Product product;

  ProductDetailIsArguments({required this.product});
}



