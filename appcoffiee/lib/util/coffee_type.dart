import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelect;
  final VoidCallback onTap;
  const CoffeeType({Key? key, required this.coffeeType, required this.isSelect, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(coffeeType,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelect ? Colors.orange : Colors.white
        ),),
      ),
    );
  }
}
