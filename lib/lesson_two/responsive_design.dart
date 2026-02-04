import 'package:flutter/material.dart';

//mediaQuery

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({super.key});

  @override
  State<ResponsiveDesign> createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {
  double? customWidth;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.sizeOf(context).width;
    double deviceHeight = MediaQuery.sizeOf(context).height;

    if (deviceWidth > 600) {
      //let it be full
      customWidth = deviceWidth;
    } else {
      //let width be half
      customWidth = deviceWidth / 2;
    }

    // deviceWidth>500 ? /** let it be full*/ : /**let it be half */;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Device width : $deviceWidth'),
          Text('Device height : $deviceHeight'),
          Text('custom width : $customWidth'),
          Container(
            color: Colors.blue,
            height: deviceHeight * 0.33,
            width: customWidth,
          ),
        ],
      ),
    );
  }
}
