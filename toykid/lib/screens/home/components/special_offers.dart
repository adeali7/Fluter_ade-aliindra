import 'package:toykid/Screens/home/components/section_title.dart';
import 'package:toykid/consts/consts.dart';


class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
      text: "Special for you",
      press: () {},
    ),
    SizedBox(height: 20,
    ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffer(
                image: banner,
                title: "Special Offers",
                brand: "Doll",
                press: () {},
              ),
              SpecialOffer(
                image: banner,
                title: "Special Offers",
                brand: "Car Fans",
                press: () {},
              ),
              SpecialOffer(
                image: banner,
                title: "Special Offers",
                brand: "Puzzle",
                press: () {},
              ),
              SizedBox(width:20 ,)
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
    required this.title, 
    required this.image, 
    required this.brand, 
    required this.press,
  });

  final String title, image;
  final String brand;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 200,
        height: 100,
        child:  ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Row(
            children: [
              Stack(
                children: [
                  Image.asset(image,
                  fit: BoxFit.cover,
                   ),
                   Image.asset(banner, fit: BoxFit.cover,),
                   Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter ,
                        colors: [
                          Color(0xFF343434).withOpacity(0.6),
                          Color(0xFF343434).withOpacity(0.10),
                        ],
                        )
                    ),
                   ),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 15, vertical:10 ),
                     child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [TextSpan(text:"$title\n",
                        style: TextStyle(fontSize:15,
                        fontWeight: FontWeight.bold, 
                         ),
                         ),
                         TextSpan(text: "$brand "),
                         ],
                   
                     ),
                     ),
                   )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}