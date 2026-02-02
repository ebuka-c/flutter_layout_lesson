import 'package:flutter/material.dart';

//mediaQuery

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({super.key});

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.sizeOf(context).width;
    double deviceHeight = MediaQuery.sizeOf(context).height;

    setState(() {});
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Device width :$deviceWidth'),
          Text('Device height : $deviceHeight'),
        ],
      ),
    );
  }
}
