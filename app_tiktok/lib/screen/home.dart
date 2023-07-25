import 'package:app_tiktok/screen/post/mypost1.dart';
import 'package:app_tiktok/screen/post/mypost2.dart';
import 'package:app_tiktok/screen/post/mypost3.dart';
import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
   UserHomePage({Key? key}) : super(key: key);
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: _controller,
            scrollDirection: Axis.vertical,
            children: [
              MyPost1(),
              MyPost2(),
              MyPost3(),
            ],

      ),
    );
  }
}