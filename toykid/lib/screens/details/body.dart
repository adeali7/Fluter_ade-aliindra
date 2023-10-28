import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/components/default_button.dart';
import 'package:toykid/screens/details/color_dots.dart';
import 'package:toykid/screens/details/product_description.dart';
import 'package:toykid/screens/details/product_images.dart';
import 'package:toykid/screens/details/top_rounded_container.dart';


class Body extends StatelessWidget {
  final Product product;

  Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product),
                TopRoundedContainer(color: Color(0xFFF6F7F9), 
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white, 
                      child: Padding(
                        padding:  EdgeInsets.only(
                          left: 20,
                          right: 20,
                          ),
                        child: DefaultButton(
                          text:" Add to Cart",
                          press: () {},
                                         ),
                      ))
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}


