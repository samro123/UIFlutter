import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introductionscreens/home_page.dart';
import 'package:introductionscreens/intro_screen/intro_page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  //keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(
                images: 'assets/images/all_grocery.png',
                topic: 'Welcome' ,
                description:'Welcome to best online grocery store. Here you will find all the groceries at one place.',
              ),
              IntroPage1(
                images: 'assets/images/delivery.png',
                topic: 'Quick & Fast Delivery' ,
                description:'We offers speedy delivery of your groceries, bathroom supplies, baby care products, pet care items, stationary, etc within 30minutes at your doorstep.',

              ),
              IntroPage1(
                images: 'assets/images/grocery.png',
                topic: 'Fresh Fruits & Vegetables' ,
                description:'Buy farm fresh fruits & vegetables online at the best & affordable prices.',

              ),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      _controller.jumpToPage(2);
                    },
                    child: Text('Skip', style: GoogleFonts.lexendDeca(fontSize: 18)),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  //next or done
                  onLastPage ? GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return HomePage();
                          },));
                    },
                    child: Text('Done',  style: GoogleFonts.lexendDeca(fontSize: 18)),
                  ):GestureDetector(
                    onTap: (){
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Icon(Icons.navigate_next, size: 30,),
                  ),

                ],
              )
          )
        ],
      )
    );
  }
}
