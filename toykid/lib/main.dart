import 'package:toykid/Screens/home/home_screen.dart';
import 'package:toykid/Screens/splash_screen/splash_screen.dart';
import 'package:toykid/screens/details/details_screen.dart';
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
        
        canvasColor: greenColor,
        fontFamily: regular,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(), 
        '/home': (context) => const HomeScreen(), 
        '/detail' : (context) => const DetailsScreen(),

      },
    );
  }
}

