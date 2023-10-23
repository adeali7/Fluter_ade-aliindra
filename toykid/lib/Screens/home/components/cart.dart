import 'package:flutter/material.dart';
import 'package:toykid/consts/consts.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Belanja'),
      ),
      body: ListView(
        children: <Widget>[
          // Item keranjang pertama
          ListTile(
            title: Text('Item 1'),
            subtitle: Text('Harga: \$10'),
            trailing: Icon(Icons.delete),
          ),
          // Item keranjang kedua
          ListTile(
            title: Text('Item 2'),
            subtitle: Text('Harga: \$15'),
            trailing: Icon(Icons.delete),
          ),
          // Tambahkan item keranjang lainnya sesuai kebutuhan

          // Tombol "Checkout"
          Container(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Tindakan saat tombol "Checkout" diklik
                // Misalnya, navigasi ke halaman checkout
              },
              child: Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}