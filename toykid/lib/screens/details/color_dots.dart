import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/home/components/rounded_icon_btn.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ...List.generate(product.colors.length, (index) => ColorDot(
            color: product.colors[index], isSelected: selectedColor == index,
            ),
           ),
           Spacer(),
           RoundedIconBtn(
            iconData: Icons.remove, 
            press: () {},
          ),
          SizedBox(width: 15),            RoundedIconBtn(
            iconData: Icons.add, 
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(right:2 ),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? Colors.purple : Colors.transparent),
      ),
      child: DecoratedBox(decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
