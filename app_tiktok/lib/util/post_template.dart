import 'package:app_tiktok/util/button.dart';
import 'package:flutter/material.dart';

class PostTemplate extends StatelessWidget {
  final String userName;
  final String videoDescription;
  final String numberOfLike;
  final String numberOfComment;
  final String numberOfShare;
  final postUser;


  PostTemplate({
    required this.userName,required this.videoDescription,required this.numberOfLike,
    required this.numberOfComment,required this.numberOfShare,required this.postUser
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //user post (at the very back)
          postUser,

          //user name and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1,1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('@' + userName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(text: videoDescription),
                            TextSpan(text: ' #sam #ro',
                                style: TextStyle(fontWeight: FontWeight.bold)
                            )
                          ]
                      ))
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                      icon: Icons.favorite,
                      number: numberOfLike
                  ),
                  MyButton(
                      icon: Icons.chat_bubble_outline_outlined,
                      number: numberOfComment
                  ),

                  MyButton(
                      icon: Icons.send,
                      number: numberOfShare
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
