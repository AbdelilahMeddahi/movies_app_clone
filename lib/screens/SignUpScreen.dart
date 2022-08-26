import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app_clone/screens/sign_in_screen.dart';
import 'package:movies_app_clone/utils/constants.dart';
import 'package:ionicons/ionicons.dart';

import '../components/unicorne_outline_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -80,
              child: Container(
                height: 166,
                width: 166,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.33,
              right: -120,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight*0.03,),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: screenHeight * 0.26,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          "Create\nAccount",
                          style: TextStyle(color: Colors.white, fontSize: 44),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: TextField(
                        style: TextStyle(color: kLoginColor),
                        cursorColor: kLoginColor,
                        decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Ionicons.person_outline),
                            hintText: 'Enter your name'),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: TextField(
                        style: TextStyle(color: kLoginColor),
                        cursorColor: kLoginColor,
                        decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Ionicons.mail_outline),
                            hintText: 'Enter valid mail id as abc@gmail.com'),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      child: TextField(
                        style: TextStyle(color: kLoginColor),
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            prefixIcon: Icon(Ionicons.lock_closed_outline),
                            hintText: 'Enter your secure password'),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: CustomOutlineButton(
                        strokeWidth: 3,
                        radius: 20,
                        width: screenWidth * 0.5,
                        height: 50,
                        padding: EdgeInsets.all(3),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            kPinkColor,
                            kGreenColor,
                          ],
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                kPinkColor.withOpacity(0.5),
                                kGreenColor.withOpacity(0.5),
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 130, vertical: 8),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              color: Colors.white,
                              height: 1,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: Text(
                              'or',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              color: Colors.white,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("lib/assets/facebook.png",width: 34,),
                        SizedBox(width: 20,),
                        Image.asset("lib/assets/google.png",width: 34,),
                        SizedBox(width: 20,),
                        Image.asset("lib/assets/twitter.png",width: 34,),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      behavior: HitTestBehavior.opaque,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                            ),
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: 'Login',
                                style: const TextStyle(
                                  color: kGreenColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
