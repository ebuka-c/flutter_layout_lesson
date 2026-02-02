import 'package:flutter/material.dart';

class ExpandedWidgetLesson extends StatelessWidget {
  const ExpandedWidgetLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: Container(width: 200, height: 100, color: Colors.red),
      //     ),
      //     Row(
      //       children: [
      //         Expanded(child: Container(height: 100, color: Colors.blue)),
      //         Container(width: 100, height: 100, color: Colors.yellow),
      //       ],
      //     ),
      //   ],
      // ),
      //flex
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(color: Colors.purple, height: 100),
              ),
              Expanded(
                flex: 4,
                child: Container(color: Colors.amber, height: 200),
              ),
              Expanded(
                flex: 5,
                child: Container(color: Colors.teal, height: 80),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
