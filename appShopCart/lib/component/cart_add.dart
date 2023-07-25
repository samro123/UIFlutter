import 'package:appfirst/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartAdd extends StatefulWidget{
  @override
  State<CartAdd> createState() => _CartAddState();
}

class _CartAddState extends State<CartAdd> {
  bool displayCart = false;
  bool displayDetails = false;
  double storeHeight = 770;

  final List<Product> products = [...productsList];
  final List<Product> cartItems = [];

  void addToCart(Product product){
    for(Product cartProduct in cartItems){
      if(cartProduct.id == product.id){
        cartProduct.quantity == product.quantity;
        return;
      }
    }

    setState(() {
      cartItems.add(product);
    });
  }


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.sizeOf(context);
    return AnimatedPositioned(
      top: displayCart ? 0 : mediaQuery.height,
      curve: Curves.easeOutQuad,
      duration:const  Duration(milliseconds: 800),
      child: GestureDetector(
        onTap: (){},
        onVerticalDragEnd: (detail){
          if(detail.primaryVelocity! >0.0){
            setState(() {
              displayCart = !displayCart;
            });
          }
        },
        child: Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 180,),
                  Expanded(
                      child: cartItems.isEmpty
                          ? const SizedBox(
                        child: Center(
                          child: Text(
                            "No Products",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                          : SizedBox(
                        child: ListView.builder(
                          itemCount: cartItems.length,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.white,
                                    child: SizedBox(
                                      height: 30,
                                      child: Image.asset(cartItems[index].imageUrl),
                                    ),
                                  ),

                                  const Spacer(),
                                  Text(
                                    cartItems[index].quantity.toString(),
                                    style: GoogleFonts.lexendDeca().copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  Text(
                                      'x',
                                      style: GoogleFonts.lexendDeca().copyWith(
                                        color: Colors.white,
                                        fontSize: 16,)
                                  ),
                                  const SizedBox(width: 10,),
                                  Text(
                                      cartItems[index].title.toString(),
                                      style: GoogleFonts.lexendDeca().copyWith(
                                        color: Colors.white,
                                        fontSize: 16,)
                                  ),
                                  const SizedBox(width: 10,),
                                  Text(
                                      ' \$ '+cartItems[index].title.toString(),
                                      style: GoogleFonts.lexendDeca().copyWith(
                                        color: Colors.white,
                                        fontSize: 16,)
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      )

                  ),

                  // delivery
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: SizedBox(
                          height: 30,
                          child: Icon(Icons.delivery_dining_sharp, size: 35,),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text('Delivery' ,
                        style: GoogleFonts.lexendDeca().copyWith(
                            color: Colors.white,
                            fontSize: 16
                        ),),
                      Text('\$ 22.3',
                          style: GoogleFonts.lexendDeca().copyWith(
                              color: Colors.white,
                              fontSize: 16)
                      ),
                    ],
                  ),

                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.quicksand().copyWith(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Text(
                        '\$ 9999999',
                        style: GoogleFonts.quicksand().copyWith(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFEC449)
                    ),
                    child: SizedBox(
                      height: 50,
                      child: Center(
                        child: Text('Next',
                          style: GoogleFonts.lexendDeca().copyWith(
                              color: Colors.black,
                              fontSize: 16
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}