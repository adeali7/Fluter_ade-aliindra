import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key); // Perbaiki penulisan super constructor

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: IconButton(
        padding: EdgeInsets.zero,
        color: Colors.white,
        onPressed: press,
        icon: Icon(iconData),
      ),
    );
  }
}
