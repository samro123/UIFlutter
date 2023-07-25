import 'package:app_tiktok/util/post_template.dart';
import 'package:flutter/material.dart';

import '../video.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'sam',
      videoDescription: 'tik tok t',
      numberOfLike: '1.0M',
      numberOfComment: '2345',
      numberOfShare: '1234',
      postUser: Container(
        color: Colors.deepPurple[100],
        child: AssetPlayWidget(ulrVideo: 'assets/video/video1.mp4'),
      ),
    );
  }
}
