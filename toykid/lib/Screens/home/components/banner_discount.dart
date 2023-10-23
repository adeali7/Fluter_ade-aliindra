import'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10),
          
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFFFD180),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: " Hanya Hari ini\n ",
          style: TextStyle(color: Colors.green),
          children: [
            TextSpan(
              text: "CashBack 50 %", 
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              )
            )
          ]
        )
       
      ),
    );
  }
}

