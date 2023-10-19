import 'package:flutter/material.dart';
import 'package:toykid/views/splash_screen/splash_screen.dart';
import 'consts/consts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toy Kid',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}

