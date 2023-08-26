import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
  final String images;
  final String topic;
  final String description;
  const IntroPage1({
    Key? key ,
    required this.images ,
    required this.topic,
    required this.description

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            child: Image.asset(images),
          ),
          SizedBox(height: 10,),
          Container(
            child: Text(topic, style: GoogleFonts.aBeeZee(color: Colors.green.shade300, fontSize: 26),),
          ),

          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            child: Text( description,
                 textAlign: TextAlign.center,
                 style: GoogleFonts.roboto(fontSize: 15),


            ),
          )
        ],
      ),
    );
  }
}
