import 'package:flutter/material.dart';

class CountTracker extends StatelessWidget {
  const CountTracker({super.key, this.countValue});
  final int? countValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Count tracker',
          style: TextStyle(fontSize: 20, fontFamily: 'myFavouriteFont'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$countValue',
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
