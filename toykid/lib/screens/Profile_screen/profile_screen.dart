import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toykid/model/user_profile_model.dart';
import 'package:toykid/screens/Profile_screen/login_screen.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selamat datang, ${userProvider.username}!'), // Menampilkan nama pengguna
            Text('Email: ${userProvider.email}'), // Menampilkan email pengguna
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 5),   //mengatur jarak dari batas
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[ BoxShadow(
             offset: Offset(0, -10),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
          ]
        ),
        child: SafeArea(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          // Navigasi ke halaman home berdasarkan initialRoute yang telah ditetapkan
          Navigator.pushNamed(context, '/home');
        },
      ),
      IconButton(
        icon: Icon(Icons.person),
        onPressed: () {
          // Navigasi ke halaman home berdasarkan initialRoute yang telah ditetapkan
          Navigator.pushNamed(context, '/profil');
        },
      ),
      
      IconButton(
        icon: Icon(Icons.chat),
        onPressed: () {
          // Navigasi ke halaman chatbot berdasarkan initialRoute yang telah ditetapkan
          Navigator.pushNamed(context, '/chatbot');
        },
      ),
    ],
  ),
      ),
      )
    );
  }
}