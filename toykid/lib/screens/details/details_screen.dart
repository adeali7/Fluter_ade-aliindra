import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';


class DetailsScreen extends StatelessWidget {
  static String routeName = "/datils";
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 40,
          width: 40,
          child: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              
            },
          ),
        ),
      )
    );
  }
}

// But we also need to pass our product to our details screen
// and we use name route so we need to create a arguments class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
} 