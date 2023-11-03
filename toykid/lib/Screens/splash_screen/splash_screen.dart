import 'package:toykid/Screens/home/home_screen.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/screens/splash_screen/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Future.delayed(Duration(seconds:2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>const HomeScreen()),
        );
    });
  }
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