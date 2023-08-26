import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  final String img;
  const BubbleStories({Key? key, required this.text, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
            maxRadius: 30,
          ),
          const SizedBox(height: 10,),
          Text(text),

        ],
      ),

    );
  }
}
