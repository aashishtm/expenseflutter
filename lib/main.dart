import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/transaction_lists.dart';

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

  final textController = TextEditingController();
  final amountController = TextEditingController();

  void addTransaction(){
    print(textController.text);
    print(amountController.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            child: Card(
              child: Text (
                'This is Expense widget',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            elevation: 5.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title',),
                    controller: textController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount',),
                    controller: amountController,
                  ),
                  RaisedButton(
                    onPressed: addTransaction,
                    color: Colors.deepPurple,
                    elevation: 5,
                    child: Text(
                      'Add Transaction',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
