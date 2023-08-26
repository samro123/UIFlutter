import 'package:flutter/material.dart';
import 'package:login/component/button/outline_button.dart';
import 'package:login/page/login.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        // bottomNavigationBarTheme: Theme.of(context).bottomNavigationBarTheme.copyWith(
        //   backgroundColor: Colors.transparent,
        // )
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }

}

