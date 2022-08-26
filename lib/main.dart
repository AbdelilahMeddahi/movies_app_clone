import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app_clone/screens/home_screen.dart';
import 'package:movies_app_clone/screens/onboarding_screen.dart';
import 'package:movies_app_clone/screens/sign_in_screen.dart';
import 'package:movies_app_clone/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.aBeeZee().fontFamily,

      ),
      home:  const HomeScreen(),
    );
  }
}
