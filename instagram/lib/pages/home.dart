import 'package:flutter/material.dart';
import 'package:instagram/util/bubble_stories.dart';
import 'package:instagram/util/user_posts.dart';

class UserHome extends StatelessWidget {
   final List peole = [
     ['Sam', 'assets/images/avater1.jpg'],
     ['Ro', 'assets/images/avater2.jpg'],
     ['Tuan', 'assets/images/avater1.jpg'],
     ['Ro', 'assets/images/avater2.jpg'],
     ['Tuan', 'assets/images/avater1.jpg'],
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram", style: TextStyle(color: Colors.black),),
             Row(children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Icon(Icons.favorite_outline),
              ),
              Icon(Icons.send)
            ],)
          ],
        ),
      ),
      body: Column(
        children: [
          //STORES
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: peole.length,
              itemBuilder: (context, index) {
              return BubbleStories(text: peole[index][0] , img: peole[index][1],);
            },),
          ),
          const Divider(
            color: Colors.grey,
            height: 10,
            thickness: 0.5,
          ),


          // Post
          Expanded(
            child: ListView.builder(
              itemCount: peole.length,
              itemBuilder: (context, index) {
              return UserPosts(name: peole[index][0]);
            },),
          )
        ],
      ),
    );
  }
}
