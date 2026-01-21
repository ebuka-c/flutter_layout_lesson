import 'package:flutter/material.dart';
import 'package:new_flutter_project/network_images.dart';

class MyLayouts extends StatelessWidget {
  const MyLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layouts')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
          children: [
            Text('Layouthjjjhjhhjh'),
            Container(width: double.infinity, height: 100, color: Colors.blue),
            Container(
              width: 200,
              height: 100,
              color: Colors.brown,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Container(color: Colors.white),
            ),
            Container(width: 200, height: 100, color: Colors.yellow),
            Image(image: AssetImage('assets/images/teddy.avif'), width: 100),
            Image(image: NetworkImage(bear), width: 200),
          ], //pixels
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
