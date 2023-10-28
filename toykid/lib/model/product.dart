import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final List<String> image;
  final List<Color> colors;
  final double rating;
  final double price;
  final bool isFavourite;
  final bool isPopular;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.price,
  });
}

//out demo products

List<Product> demoProducts = [
  Product(
    image: [
      "assets/images/doll/doll_1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Baby Girl Dolls Can Talk",
    price: 109.000,
    description: "Boneka bayi 100% hasil kerajinan tangan dengan lukisan tangan, vinyl silikon berkualitas tinggi, dan vinyl lembut. ",
    rating: 4.8,
    isFavourite:true,
    isPopular: true,
  ),
   Product(
    image: [
      "assets/images/educational/fruits.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: " 36 Pcs Cutting Fruit Toys + Basket ",
    price: 150.000,
    description: "description",
    rating: 4.8,
    isFavourite:true,
    isPopular: true,
  ),
   Product(
    image: [
      "assets/images/remote_carfans/rccar.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title : "Offroad RC Toy 1:16 Battery 2000 mAh",
    price: 229.000,
    description: "description",
    rating: 4.8,
    isFavourite:true,
    isPopular: true,
  ),
  Product(
    image: [
      "assets/images/remote_carfans/car.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title : "Offroad RC toy 1:14 Battery 3000 mAh",
    price: 259.000,
    description: "description",
    rating: 4.8,
    isFavourite:true,
    isPopular: true,
  ),
  

];
