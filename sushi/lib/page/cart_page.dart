import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/components/button.dart';
import 'package:sushi/models/food.dart';
import 'package:sushi/models/shops.dart';
import 'package:sushi/theme/colors.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  void removeFromCart(Food food, BuildContext context){
      //get access to shop
     final shop = context.read<Shop>();

     //remove from cart
    shop.removeFromCart(food);

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
        title: Text("My Cart"),
        backgroundColor: primaryColor,
        elevation: 0,
          leading: IconButton(icon: Icon(Icons.navigate_before_rounded), onPressed: () => Navigator.pushNamed(context, '/menupage'),),
      ),
      body: Column(
        children: [
          //customer cart
          Expanded(
            child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, index) {
                //get food from cart
                final Food food = value.cart[index];


                //get food name
                final String foodName = food.name;


                //get food price
                final String  foodPrice = food.price;

                // return list tile

                return Container(
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: ListTile(
                    title: Text(foodName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    subtitle: Text(foodPrice, style: TextStyle(color: Colors.grey[200]),),
                    trailing: IconButton(
                      onPressed:()=>removeFromCart(food, context) ,
                      icon: Icon(Icons.delete, color: Colors.grey[300],),
                    ),
                  ),
                );
              },),
          ),

          //Pay button
          Padding(
            padding: const EdgeInsets.all(25),
            child: MyButton(text: "Pay Now", onTap: (){}),
          )
        ],
      ),
    ),);
  }
}
