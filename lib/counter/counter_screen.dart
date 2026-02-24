import 'package:flutter/material.dart';
import 'package:new_flutter_project/counter/count_tracker.dart';
import 'package:new_flutter_project/providers/count_provider.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key, required this.title});

  final String title;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, count, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(
              widget.title,
              style: TextStyle(fontSize: 20, fontFamily: 'myFavouriteFont'),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/tracker');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => CountTracker()),
                    );
                  },
                  child: Text('CLICK'),
                ),
                // SizedBox(height: 250),
                const Text('You have pushed the button this many times:'),
                Text(
                  Provider.of(context),
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: context.read<CountProvider>().increaseCount,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
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
      },
    );
  }
}
