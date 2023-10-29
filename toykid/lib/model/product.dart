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
  final categories;
  var id;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.price,
    required this.categories,
  });
}

//out demo products

List<Product> demoProducts = [
  Product(
    image: [
      "assets/images/doll/doll_1.jpg",  // Gambar utama
      // "assets/images/doll/blue.jpg",     // Gambar warna biru
      // "assets/images/doll/purple.jpg",   // Gambar warna ungu
    ],
    colors: [
      Colors.red,    // Warna utama
      Colors.blue,   // Warna biru
      Colors.purple, // Warna ungu
    ],
    title: "Baby Girl Dolls Can Talk",
    price: 11,
    description:
        "Boneka bayi 100% hasil kerajinan tangan dengan lukisan tangan, vinyl silikon berkualitas tinggi, dan vinyl lembut.",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
    categories: "doll",
  ),
  Product(
    image: [
      "assets/images/doll/doll_2.jpg",
    ],
    colors: [
      Colors.pink,
      Colors.green,
      Colors.orange,

    ],
    title: "Baby Boy Dolls boy funny",
    price: 13,
    description: "Boneka bayi 100% hasil kerajinan tangan dengan lukisan tangan, vinyl silikon berkualitas tinggi, dan vinyl lembut. ",
    rating: 4.9,
    isFavourite:true,
    isPopular: true,
    categories: "doll",
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
    price: 15,
    description: "Description: Foster creativity and motor skills with this 36-piece toy set, complete with a basket. Kids can enjoy hours of imaginative play while learning to cut various items.",
    rating: 4.9,
    isFavourite:true,
    isPopular: true,
    categories: "Puzzle",
  ),
   Product(
    image: [
      "assets/images/educational/fishing.jpg",
    ],
    colors: [
      Colors.blue,
      Colors.pink,
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: " Fish fishing toys 28 pcs ",
    price: 9,
    description: "old style magnetic fishing fishing toy but with a more attractive appearance and model, can train children's concentration. ",
    rating: 4.9,
    isFavourite:true,
    isPopular: true,
    categories: "Puzzle",
  ),
  
   Product(
    image: [
      "assets/images/remote_carfans/rccar.jpeg",
    ],
    colors: [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.white,
    ],
    title : "Offroad RC Toy 1:16 Battery 2000 mAh",
    price: 20,
    description: "Description: Experience thrilling off-road adventures with this 1:16 scale RC car equipped with a powerful 2000 mAh battery. Conquer rough terrains and enjoy hours of non-stop fun.",
    rating: 4.9,
    isFavourite:true,
    isPopular: true,
    categories: "Car Fans",
  ),
  Product(
    image: [
      "assets/images/remote_carfans/car.jpg",
    ],
    colors: [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.white,
    ],
    title : "Offroad RC toy 1:14 Battery 3000 mAh",
    price: 20,
    description: "Description: Take on the great outdoors with this 1:14 scale RC offroad vehicle featuring a high-capacity 3000 mAh battery. It's designed for exceptional performance and endless entertainment.",
    rating: 4.8,
    isFavourite:true,
    isPopular: true,
    categories: "Car Fans",
  ),
   

];
