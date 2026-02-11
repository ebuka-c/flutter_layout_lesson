import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_project/utils/colors.dart';

import 'authentication_screens/login.dart';
import 'authentication_screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        scaffoldBackgroundColor: Color(0xff000000),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.blueGrey,
          backgroundColor: Theme.of(context).colorScheme.scrim,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          headlineMedium: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          headlineSmall: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 14,
            color: AppColors.grey,decorationColor: Colors.white
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(color: Colors.amber),
          unselectedLabelStyle: TextStyle(color: Colors.red),
        ),
      ),
      home:  LoginScreen(),
    );
  }
}
