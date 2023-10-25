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