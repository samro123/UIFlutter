import 'package:flutter/material.dart';
import 'package:login/component/button/my_button.dart';
import 'package:login/component/my_textfield.dart';
import 'package:login/component/square_tile.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void SignUser(){}
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Navigator.pop(context);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(title: Text(' '),backgroundColor: Colors.white,),
        backgroundColor: Colors.white,
        body: SafeArea(

          child: Center(
            child: SingleChildScrollView(
              reverse: true,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children:  [
                    //logo
                    const Icon(Icons.lock, size: 100,),

                    const SizedBox(height: 30,),
                    //welcome back , you are been missed
                    Text('Register',
                      style: TextStyle(color: Colors.black , fontSize: 23, fontWeight: FontWeight.bold),),

                    const SizedBox(height: 25,),

                    //username textfield
                    MyTextField(
                      controler: usernameController,
                      hintText: 'User Name',
                      obscureText: false,
                      errorText: '',
                      onChange: null,
                    ),

                    const SizedBox(height: 25,),

                    // password textfield
                    MyTextField(
                      controler: passwordController,
                      hintText: 'PassWord',
                      obscureText: true,
                      errorText: '',
                      onChange: null,
                    ),

                    const SizedBox(height: 25,),

                    // password textfield
                    MyTextField(
                      controler: passwordController,
                      hintText: 'Confirm PassWord',
                      obscureText: true,
                      errorText: '',
                      onChange: null,
                    ),



                    const SizedBox(height: 25,),

                    //sign in button
                    MyButton(
                        onTap:  SignUser,
                        textMy: 'Register'),



                    //not member? register now
                    Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
