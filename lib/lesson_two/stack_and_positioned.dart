import 'package:flutter/material.dart';

class StackAndPositioned extends StatefulWidget {
  const StackAndPositioned({super.key});

  @override
  State<StackAndPositioned> createState() => _StackAndPositionedState();
}

class _StackAndPositionedState extends State<StackAndPositioned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(height: 500, width: 350),
                Positioned(
                  right: 150,
                  bottom: 150,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                    ),
                  ),
                ),
                Positioned(
                  right: 70,
                  bottom: 70,
                  child: Container(
                    color: Colors.purple,
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(color: Colors.yellow, width: 200, height: 200),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
