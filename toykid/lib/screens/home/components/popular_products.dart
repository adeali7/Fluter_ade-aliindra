import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/home/components/product_card.dart';
import 'package:toykid/screens/home/components/section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SectionTitle(
     text: "Popular Product",
      press: () {},
              ),
              SizedBox(height: 20),

        SingleChildScrollView(
         scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
               demoProducts.length,
               (index) => ProductCard(
                 product: demoProducts[index],
               ),
               ), 
               SizedBox(width: 20,) 
            ],
          ),
        ),
      ],
    );
  }
}

