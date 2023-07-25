import 'package:appfirst/shopping.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        // bottomNavigationBarTheme: Theme.of(context).bottomNavigationBarTheme.copyWith(
        //   backgroundColor: Colors.transparent,
        // )
      ),
      home: Shopping(),
      debugShowCheckedModeBanner: false,
    );
  }
}

