import 'package:facebook/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  List donutsOnSale = [
    //[dountFlavor, donutPrice, dountColor, imageName]
    ["Ice Cream", "36", Colors.blue , "assets/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red , "assets/images/strawberry_donut.png"],
    ["Grape", "82", Colors.purple , "assets/images/grape_donut.png"],
    ["Chocolate", "52", Colors.brown , "assets/images/chocolate_donut.png"],
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,
            childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
            return DonutTile(
             dountFlavor: donutsOnSale[index][0],
             dountPrice: donutsOnSale[index][1],
             dountColor: donutsOnSale[index][2],
             imageName: donutsOnSale[index][3],
            );
        },);
  }
}
