import 'package:flutter/material.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/widget_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            appLogoWidget(),
            appversion.text.white.make(),
            credit.text.white.make(),
          ],
        ),
      ),
    );
  }
}