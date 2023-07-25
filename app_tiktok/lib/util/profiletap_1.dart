import 'package:flutter/material.dart';

class FirstTap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.grey[300],
        );
      },
    );

  }

}