import 'package:app_tiktok/screen/video.dart';
import 'package:app_tiktok/util/button.dart';
import 'package:app_tiktok/util/post_template.dart';
import 'package:flutter/material.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'sam',
      videoDescription: 'tik tok t',
      numberOfLike: '1.2M',
      numberOfComment: '2345',
      numberOfShare: '123',
      postUser: Container(
        color: Colors.deepPurple[100],
        child: AssetPlayWidget(ulrVideo: 'assets/video/video1.mp4'),
      ),
    );
  }
}
