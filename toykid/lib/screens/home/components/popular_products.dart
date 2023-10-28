import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/details/details_screen.dart';
import 'package:toykid/screens/home/components/product_card.dart';
import 'package:toykid/screens/home/components/section_title.dart'; // Pastikan Anda mengimpor DetailsScreen

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

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
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      product: demoProducts[index],
                      press: () {
                        Navigator.pushNamed(
                          context,
                          '/detail',
                          arguments: ProductDetailIsArguments(
                            product : demoProducts[index]), // Kirim produk sebagai argumen ke DetailsScreen
                        );
                      },
                    );
                  } else {
                    return SizedBox.shrink(); // Ini akan menghilangkan item yang tidak populer
                  }
                },
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

