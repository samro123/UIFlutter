import 'package:flutter/material.dart';
class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             //image coffee
             ClipRRect(
                 borderRadius: BorderRadius.circular(12),
                 child: Image.asset('assets/images/image2.jpg')
             ),

             //name coffee
             Text('Late' ,style: TextStyle(fontSize: 20),),
             Text('With Almond Milk', style: TextStyle(color: Colors.grey[700]),),

             //price

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('\$400'),
                   Container(
                       padding: EdgeInsets.all(4),
                       decoration: BoxDecoration(
                         color: Colors.orange,
                         borderRadius: BorderRadius.circular(6)
                       ),
                       child: Icon(Icons.add))
                 ],
               ),
             )
           ],
         ),
       ),
      ),
    );
  }
}
