import './transaction.dart';
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

  final List<Transaction> transactions = [
    Transaction(
      id:'T one',
      title: 'My Fee',
      amount: 1200.54,
      date: DateTime.now(),
    ),
    Transaction(
      id:'T two',
      title: 'My Bank',
      amount: 1000.54,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            child: Column(
              children:transactions.map((tx){
                return Card(
                  elevation: 5.0,
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          tx.amount.toString(),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              tx.title,
                            ),
                          ),
                          Container(
                            child: Text(
                              tx.date.toString(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
