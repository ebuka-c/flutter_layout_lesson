import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_project/layouts.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.brown,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          headlineMedium: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
          headlineSmall: TextStyle(fontFamily: GoogleFonts.acme().fontFamily),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(color: Colors.amber),
          unselectedLabelStyle: TextStyle(color: Colors.red),
        ),
      ),
      home: const MyLayouts(),
    );
  }
}
