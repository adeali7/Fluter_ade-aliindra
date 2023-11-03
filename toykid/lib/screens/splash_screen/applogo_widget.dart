import 'package:flutter/material.dart';
import 'package:toykid/consts/consts.dart';

Widget appLogoWidget() {
  return Padding(
    padding: EdgeInsets.all(8.0), // Menambahkan bantal 8 piksel
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.0), // Memebulatkan sudut dengan radius 8 piksel
      child: Image.asset(
        logoImage,
        width: 200.0,
        height: 200.0,
      ),
    ),
  );
}