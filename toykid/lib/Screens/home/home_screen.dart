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
    );
  }
}

