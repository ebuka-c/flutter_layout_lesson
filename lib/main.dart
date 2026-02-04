import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_project/layouts.dart';
import 'package:new_flutter_project/lesson_two/expanded_widget_lesson.dart';
import 'package:new_flutter_project/lesson_two/responsive_design.dart';
import 'package:new_flutter_project/lesson_two/stack_and_positioned.dart';
import 'package:new_flutter_project/utils/colors.dart';

import 'authentication_screens/login.dart';
import 'my_home_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Color(0xff000000),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.brown,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          headlineMedium: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          headlineSmall: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          bodyMedium: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 14,
            color: AppColors.white,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(color: Colors.amber),
          unselectedLabelStyle: TextStyle(color: Colors.red),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
