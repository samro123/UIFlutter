import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
   AccountTab4({Key? key}) : super(key: key);
  final List<String> userPost = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.blue[100],
            ),
          );
        },);
  }
}
