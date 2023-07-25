import 'package:flutter/material.dart';

import '../../util/post_template.dart';
import '../video.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: 'ro',
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
