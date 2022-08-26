import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app_clone/components/unicorne_outline_button.dart';

import '../utils/constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                    SizedBox(
                      height: screenHeight * 0.07,
                    ),
                    CustomOutlineButton(
                      strokeWidth: 4,
                      radius: screenWidth * 0.8,
                      width: screenWidth * 0.8,
                      height: screenWidth * 0.8,
                      padding: EdgeInsets.all(4),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kPinkColor,
                          kPinkColor.withOpacity(0),
                          kGreenColor.withOpacity(0.2),
                          kGreenColor,
                        ],
                        stops: [0.2, 0.4, 0.6, 1],
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              alignment: Alignment.bottomLeft,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "lib/assets/vr.png",
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.09,
                    ),
                    Text(
                      'Watch movies in\nVirtual Reality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenHeight < 668 ? 18 : 34,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor.withOpacity(0.85),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Text(
                      'Download and watch offline\nwhenever you are',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenHeight < 668 ? 12 : 16,
                        color: kWhiteColor.withOpacity(0.76),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    CustomOutlineButton(
                      strokeWidth: 3,
                      radius: 20,
                      width: 160,
                      height: 40,
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
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 14,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                            (index) {
                          return Container(
                            height: 7,
                            width: 7,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: index == 0
                                  ? kGreenColor
                                  : kWhiteColor.withOpacity(0.2),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight*0.025,),
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
