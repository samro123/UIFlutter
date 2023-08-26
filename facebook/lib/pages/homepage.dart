import 'package:facebook/tab/burger_tab.dart';
import 'package:facebook/tab/donut_tab.dart';
import 'package:facebook/tab/pancake_tab.dart';
import 'package:facebook/tab/pizza_tab.dart';
import 'package:facebook/tab/smoothie_tab.dart';
import 'package:facebook/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   // my tabs
   List<Widget> myTabs = [
     // dount tab
     MyTab(iconPath: 'assets/icons/burger.png'),
     MyTab(iconPath: 'assets/icons/donut.png'),
     MyTab(iconPath: 'assets/icons/pancakes.png'),
     MyTab(iconPath: 'assets/icons/pizza.png'),
     MyTab(iconPath: 'assets/icons/smoothie.png'),
   ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
              onPressed: () {
                //open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                ),
                onPressed: () {

                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              child: Row(
                children: const [
                  Text('I want to eat', style: TextStyle(fontSize: 24),),
                  Text(' EAT', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold), )
                ],
              ),
            ),
            const SizedBox(height: 24,),
            //Tab bar
            TabBar(tabs: myTabs),

            //Tab bar view

            Expanded(
                child: TabBarView(
                  children: [

                    BurgerTab(),
                    DonutTab(),
                    PancakeTab(),
                    PizzaTab(),
                    SmoothieTab(),

                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
