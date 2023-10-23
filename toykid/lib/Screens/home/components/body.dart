import 'package:flutter_svg/flutter_svg.dart';
import 'package:toykid/Screens/home/components/banner_discount.dart';
import 'package:toykid/Screens/home/components/categories.dart';
import 'package:toykid/Screens/home/components/home_header.dart';
import 'package:toykid/Screens/home/components/section_title.dart';
import 'package:toykid/consts/consts.dart';

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
              SizedBox(height: 10),
              DiscountBanner(),
              SizedBox(height: 10),
              Categories(),
              SizedBox(height: 10),
              SectionTitle(
                text: "Special for you",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

