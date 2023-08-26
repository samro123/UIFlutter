import 'package:appcoffiee/util/coffee_tile.dart';
import 'package:appcoffiee/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list type coffee
  final List coffeeType = [
    ['cappucino', true],
    ['latte', false],
    ['black', false]
  ];

  //user tap coffee

  void coffeeTypeSelected(int index){
    setState(() {
       coffeeType[index][1] = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: ''
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 600,
          child: Column(
            children: [
              //find the best coffee for you
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Find the best coffee for you',
                  style: GoogleFonts.bebasNeue(fontSize: 56),),
              ),
              SizedBox(height: 25,),

              //search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Find your coffee..',
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600)
                      )
                  ),
                ),
              ),

              SizedBox(height: 25,),

              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: coffeeType.length,
                    itemBuilder: (context, index) {
                      return CoffeeType(
                          coffeeType: coffeeType[index][0],
                          isSelect: coffeeType[index][1],
                          onTap: (){
                            coffeeTypeSelected(index);
                          });
                    },
                )
              ),

              Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTile()
                    ],
                  )),


            ],
          ),
        ),
      ),
    );
  }
}
