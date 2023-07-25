
import 'package:appfirst/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
class CartDetail extends StatefulWidget {


  const CartDetail({super.key, required this.productCart,required this.onAddProduct});

  final Product productCart;

  // final VoidCallback onAddProduct;
  final Function(Product product) onAddProduct;


  @override
  State<CartDetail> createState() => _CartDetailState();
}

class _CartDetailState extends State<CartDetail> {
  late String heroTage = "";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop(true);
          return true;
        },
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SafeArea(
                          child: SizedBox(
                            height: 350,
                            width: 350,
                            child: Hero(
                              tag: "${widget.productCart.id}$heroTage",
                              child: Image.asset(widget.productCart.imageUrl,),
                            ),
                          )
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        widget.productCart.title,
                        style: GoogleFonts.lexendDeca().copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text('500 g',
                          style: GoogleFonts.quicksand().copyWith(
                            fontSize: 16,
                            color: Colors.grey
                          ),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25)
                              ),
                              border: Border.all(
                                color: Colors.grey,
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    onPressed: (){
                                      if(widget.productCart.quantity>1){
                                        setState(() {
                                          widget.productCart.quantity --;
                                        });
                                      }
                                    },
                                    icon: Icon(Icons.remove)),
                                Text(
                                  '${widget.productCart.quantity}',
                                  style: GoogleFonts.quicksand().copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                IconButton(onPressed: (){
                                  setState(() {
                                    widget.productCart.quantity ++;
                                  });
                                },
                                    icon: Icon(Icons.add)),

                              ],
                            ),
                          ),
                          Text(
                            '${widget.productCart.price.toString()}',
                            style: GoogleFonts.lexendDeca().copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "About the Product ",
                        style: GoogleFonts.quicksand().copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        widget.productCart.description,
                        style: GoogleFonts.quicksand().copyWith(
                          fontSize: 16,
                          color: Colors.black54
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 180,
              decoration: const BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white10
                  ]
                )
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.black12,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.white,
                          child:LikeButton(),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          heroTage = "cart";
                        });
                        widget.onAddProduct(widget.productCart);
                        Navigator.of(context).pop('Yes');
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFEC449),
                          ),
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.sizeOf(context).width/2,
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: GoogleFonts.lexendDeca().copyWith(
                                  color: Colors.black,
                                  fontSize: 16
                                ),
                              ),
                            ),
                          )

                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
