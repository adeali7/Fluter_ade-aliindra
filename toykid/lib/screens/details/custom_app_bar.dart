import 'package:flutter/material.dart';
import 'package:toykid/screens/home/components/rounded_icon_btn.dart';



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