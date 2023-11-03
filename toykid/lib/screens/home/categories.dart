import 'package:flutter/material.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/screens/details_product/details_screen.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/categories/doll.png", "text": "doll"},
      {"icon": "assets/icons/categories/car.png", "text": "Car Fans"},
      {"icon": "assets/icons/categories/puzzle.png", "text": "Puzzle"},
    ];
    return Padding(
      padding:const EdgeInsets.symmetric (horizontal:10),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {
                    // Navigasi ke halaman detail kategori
                    Navigator.push(
                    context,
                     MaterialPageRoute(
                     builder: (context) => ProductListPage(
                      category: categories[index]["text"],
                    ),
                  ),
                );
                    print("categories");
                  },
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
    // Filter produk berdasarkan kategori
    List<Product> productsInCategory = demoProducts.where((product) => product.categories == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk - $category'),
      ),
      body: ListView.builder(
        itemCount: productsInCategory.length,
        itemBuilder: (context, index) {
          Product product = productsInCategory[index];
          return ListTile(
            leading: Image.asset(product.image[0]), // Menampilkan gambar produk
            title: Text(product.title),
            subtitle: Text(product.description),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/detail', // Mengarahkan ke halaman detail produk
                  arguments: ProductDetailIsArguments(product: productsInCategory[index]), // Mengirimkan objek produk sebagai argumen
                );
              },
              child: Text('Lihat Detail'),
            ),
          );
        },
      ),
    );
  }
}