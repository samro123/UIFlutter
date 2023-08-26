import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String dountFlavor;
  final String dountPrice;
  final dountColor;
  final String imageName;
  const DonutTile({
    Key? key,
    required this.dountFlavor,
    required this.dountPrice,
    required this.dountColor,
    required this.imageName
  }) : super(key: key);

  final double borderRadius = 12;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: dountColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(borderRadius),
                    decoration: BoxDecoration(
                      color: dountColor[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(borderRadius),
                        topRight: Radius.circular(borderRadius)
                      )
                    ),
                    child: Text('\$'+dountPrice, style: TextStyle(
                      color: dountColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),)),
              ],
            ),

            //donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(imageName),
            ),

            //donut flavor
            Text(dountFlavor, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            const SizedBox(height: 4,),
            Text('Dunkins', style: TextStyle(color: Colors.grey[700]),),
            //love icon + add icon
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Icon(Icons.favorite , color: Colors.pink,),
                   Icon(Icons.add, color: Colors.grey[800],)
                 ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
