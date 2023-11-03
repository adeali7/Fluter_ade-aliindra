import 'package:flutter/material.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/details_product/body_detail_produk.dart';


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



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double rating;

  const CustomAppBar( this.rating);


  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5) ,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 5),
                    Image.asset("assets/icons/star.png",
                    width: 20,
                    height: 20,
                    ),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}