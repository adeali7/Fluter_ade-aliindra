import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
  Key? key,
  required this.text,
  required this.press,
}) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("Special for you",
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
        ),
        GestureDetector(
          onTap:press,
          child: Text("See More"),
        ),
        ],
      ),
    );
  }
}

