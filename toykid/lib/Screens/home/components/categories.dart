import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/categories/doll.png", "text": "Doll"},
      {"icon": "assets/icons/categories/car.png", "text": "Car Fans"},
      {"icon": "assets/icons/categories/puzzle.png", "text": "Puzzle"},
    ];
    return Padding(
      padding:EdgeInsets.symmetric (horizontal:10),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {},
                  ),
                ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
  required this.icon,
  required this.text,
  required this.press,
  Key? key,
}) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 75,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(icon),
              ),
            ),
            const SizedBox(height: 10),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

// Halaman daftar produk dengan kategori yang sesuai
class ProductListPage extends StatelessWidget {
  final String category;

  ProductListPage({required this.category});

  @override
  Widget build(BuildContext context) {
    // Di sini Anda dapat menampilkan daftar produk yang sesuai dengan kategori.
    // Gunakan "category" untuk menampilkan produk yang relevan.
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk - $category'),
      ),
      body: Center(
        child: Text('Daftar produk untuk kategori $category'),
      ),
    );
  }
}
