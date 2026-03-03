import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_flutter_project/authentication_screens/forgot_pwd.dart';
import 'package:new_flutter_project/counter/count_tracker.dart';
import 'package:new_flutter_project/home/home_screen.dart';
import 'package:new_flutter_project/counter/counter_screen.dart';
import 'package:new_flutter_project/providers/count_provider.dart';
import 'package:new_flutter_project/test.dart';
import 'package:new_flutter_project/utils/colors.dart';
import 'package:provider/provider.dart';

import 'authentication_screens/login.dart';
import 'authentication_screens/sign_up.dart';
import 'utils/route_names.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CountProvider(),
      child: const MyApp(),
    ),
  );
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
            color: AppColors.grey,
            decorationColor: Colors.white,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(color: Colors.amber),
          unselectedLabelStyle: TextStyle(color: Colors.red),
        ),
      ),
      home: MyWidget(),
      //named routes
      // initialRoute: loginRoute,
      routes: {
        loginRoute: (context) => LoginScreen(),
        '/sign_up': (context) => CreateAccountPage(),
        '/forgot_pwd': (context) => ForgotPwd(),
        '/home_screen': (context) => HomeScreen(),
        '/counter_screen': (context) => CounterScreen(title: 'Counter App'),
        '/tracker': (context) => CountTracker(),
      },
    );
  }
}
