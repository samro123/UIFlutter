import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controler;
  final String hintText;
  final bool obscureText;
  final errorText;
  final onChange;
  const MyTextField({
    Key? key ,
    required this.controler ,
    required this.hintText,
    required this.obscureText,
    required this.errorText,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controler,
        obscureText: obscureText,
        onChanged: onChange,
        decoration: InputDecoration(
            enabledBorder:const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500]),
            errorText: errorText,

        ),
      ),
    );
  }
}
