import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  HomePage({
    Key key,
    this.counter,
    this.onIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Increment Example')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('You have pushed the button this many times:'),
            Text('$counter', style: TextStyle(fontSize: 30))
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: onIncrement,
        child: Icon(Icons.add),
      ),
    );
  }
}