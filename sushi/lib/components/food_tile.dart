import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({Key? key, required this.food, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.only(left: 25),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(food.img, height: 140,),
            Text(food.name, style: GoogleFonts.dmSerifDisplay(fontSize: 20),),
            SizedBox(
              width: 160,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$' + food.price,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        Text(food.rating, style: TextStyle(color: Colors.grey),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
