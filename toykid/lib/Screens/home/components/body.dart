import 'package:toykid/Screens/home/components/banner_discount.dart';
import 'package:toykid/Screens/home/components/categories.dart';
import 'package:toykid/Screens/home/components/home_header.dart';
import 'package:toykid/consts/consts.dart';
import 'package:toykid/screens/home/components/popular_products.dart';
import 'package:toykid/screens/home/components/special_offers.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultpadding,
            vertical: defaultpadding * 0,
          ),
          child: Column(
            children: [
              SizedBox(height: 5),
              HomeHeader(),
              SizedBox(height: 20),
              DiscountBanner(),
              SizedBox(height: 30),
              Categories(),
              SizedBox(height: 30),
              SpecialOffers(),
              SizedBox(height: 30),
              PopularProducts(),
                
              
            ],
          ),
        ),
      ),
    );
  }
}

