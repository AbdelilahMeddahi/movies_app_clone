import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movies_app_clone/components/masked_image.dart';
import 'package:movies_app_clone/components/search_field_widget.dart';
import 'package:movies_app_clone/models/movie.dart';

import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBlackColor,
      extendBody: true,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreenColor.withOpacity(0.5),
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
            Positioned(
              bottom: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreenColor.withOpacity(0.5),
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
            Positioned(
              top: screenHeight * 0.5,
              right: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPinkColor.withOpacity(0.5),
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
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  SizedBox(
                    height: 44,
                  ),
                  Text(
                    "What would you\nlike to watch?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: kWhiteColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SearchFieldWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "New Movies",
                      style: TextStyle(color: kWhiteColor, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  SizedBox(
                    height: 185,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = kMaskFirstIndex;
                        } else if (index == newMovies.length - 1) {
                          mask = kMaskLastIndex;
                        } else
                          mask = kMaskCenter;
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 185,
                            width: 136,
                            child: MaskedImage(
                              asset: newMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Upcoming Movies",
                      style: TextStyle(color: kWhiteColor, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  SizedBox(
                    height: 185,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: upcomingMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = kMaskFirstIndex;
                        } else if (index == upcomingMovies.length - 1) {
                          mask = kMaskLastIndex;
                        } else
                          mask = kMaskCenter;
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 185,
                            width: 136,
                            child: MaskedImage(
                              asset: upcomingMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [kPinkColor.withOpacity(0.2), kGreenColor.withOpacity(0.2)],
          ),
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kPinkColor,
                kGreenColor,
              ],
            ),
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            fillColor: const Color(0xff404c57),
            child: Icon(Ionicons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 62,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kWhiteColor.withOpacity(0.1),
            kWhiteColor.withOpacity(0.1),
          ],
        ),
        border: 0,
        blur: 30,
        borderGradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kPinkColor,
            kGreenColor,
          ],
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.home,color: kWhiteColor,size: 28,),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.logo_youtube,color: kWhiteColor,size: 28,),
                ),
              ),
              const Expanded(
                child: Text(''),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.library,color: kWhiteColor,size: 28,),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Ionicons.arrow_down_circle,color: kWhiteColor,size: 28,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
