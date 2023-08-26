import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
   UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //profile photo
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Icon(Icons.send)
            ],
          ),
        ),

        //
        Container(
          height: 400,
          color: Colors.grey[300],
        ),

        //below the post -> buttom and comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.chat_bubble_outline_outlined),
                  ),
                  Icon(Icons.share)
                ],
              ),
              Icon(Icons.bookmark_outline_outlined)
            ],
          ),
        ),

        //comment
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(children: [
            Text('Liked by '),
            Text('mitcholo', style: TextStyle(fontWeight: FontWeight.bold),),
            Text(' and '),
            Text('other' , style: TextStyle(fontWeight: FontWeight.bold),)
          ],),
        ),

        //caption
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: RichText(text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:'i turn the dirt they throwing into riches til in filthy sam sam' )
            ]
          )),
        )


      ],
    );
  }
}
