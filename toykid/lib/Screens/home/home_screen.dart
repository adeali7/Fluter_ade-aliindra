import 'package:flutter/material.dart';
import 'package:toykid/Screens/home/components/body.dart';


import 'package:toykid/consts/consts.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
   
  const HomeScreen
({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
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

