import 'package:flutter/material.dart';
import 'package:login/component/button/my_button.dart';
import 'package:login/component/my_textfield.dart';
import 'package:login/component/square_tile.dart';
import 'package:login/page/forgotpassword.dart';
import 'package:login/page/register.dart';

class LoginPage extends StatefulWidget {
    LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // check if it's email or not in textfile
  bool _isValidEmail = true;

  @override
  void dispose() {
    // TODO: implement dispose
    usernameController.dispose();
    super.dispose();
  }
  bool _isEmailVaild(String email){
    // Biểu thức chính quy để kiểm tra tính hợp lệ của email
    // Cài đặt này hỗ trợ hầu hết các mẫu email thông thường
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegex.hasMatch(email);
  }

  void _checkEmailValidity(String email){
    setState(() {
      _isValidEmail = _isEmailVaild(email);
    } );
  }

  //sign user in method

  //sign user in method
    void SignUser(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children:  [
                //logo
                const Icon(Icons.lock, size: 100,),

                const SizedBox(height: 50,),
                //welcome back , you are been missed
                Text('Welcome back you are been missed',
                  style: TextStyle(color: Colors.grey[700] , fontSize: 16),),

                const SizedBox(height: 25,),

                //username textfield
                MyTextField(
                  controler: usernameController,
                  hintText: 'User Name',
                  obscureText: false,
                  onChange: _checkEmailValidity,
                  errorText: _isValidEmail ? null : 'Invalid email',
                ),

                const SizedBox(height: 25,),

                // password textfield
                MyTextField(
                  controler: passwordController,
                  hintText: 'PassWord',
                  obscureText: true,
                  errorText: null,
                  onChange: null,
                ),

                const SizedBox(height: 10,),
                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword(),));
                          },
                          child: Text('Forgot password? ', style: TextStyle(color: Colors.grey[600]),)),
                    ],
                  ),
                ),

                const SizedBox(height: 25,),

                //sign in button
                MyButton(
                         onTap:  SignUser,
                         textMy: 'SignIn'),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('First time here?'),
                    GestureDetector(
                      onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                      },
                      child: Text('Sign Up'),
                    )
                  ],
                ),

                const SizedBox(height: 25,),
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(child: Divider(thickness: 0.5,color: Colors.grey[400],)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Or continue with', style: TextStyle(color: Colors.grey[700]),),
                      ),
                      Expanded(child: Divider(thickness: 0.5,color: Colors.grey[400],))
                    ],
                  ),
                ),

                // google +  fb sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imgPath: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png'),
                    const SizedBox(width: 10,),
                    SquareTile(imgPath: 'https://www.facebook.com/images/fb_icon_325x325.png')

                  ],
                ),

                //not member? register now



               Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
