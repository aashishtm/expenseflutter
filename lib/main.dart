import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text (
                'This is Expense widget',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Card(
              child: Text (
                'This is Adding widget',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
