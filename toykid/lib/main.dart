import 'package:toykid/Screens/home/home_screen.dart';
import 'package:toykid/Screens/splash_screen/splash_screen.dart';
import 'package:toykid/model/product.dart';
import 'package:toykid/provider/user_profile_model.dart';
import 'package:toykid/screens/cart/cart._screen.dart';
import 'package:toykid/screens/details/details_screen.dart';
import 'package:toykid/screens/home/login_screen.dart';
import 'package:toykid/screens/home/profile_screen.dart';
import 'consts/consts.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => UserProvider()),
    ],
    child: const MyApp(),
  ),
 );
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
        '/detail': (context) => DetailsScreen(product: demoProducts[0]),
        '/cart': (context) => CartScreen(),
        '/profil': (context) => ProfileScreen(),
        '/login' :(context) => LoginScreen(),

      },
    );
  }
}

