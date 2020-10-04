import './widgets/transaction_lists.dart';
import './widgets/new_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './models/transaction.dart';

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

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Transaction> _transactions = [
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

  void _addTransaction(String txTitle, double txAmount){
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      id: DateTime.now().toString(),
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext bctx){
    showModalBottomSheet(context: bctx, builder: (_){
      return GestureDetector(
        child: NewTransaction(_addTransaction),
        onTap: () {},
        behavior: HitTestBehavior.opaque,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense'),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: ()=>_startAddNewTransaction(context)),
        ],
      ),
      body: ListView(
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
          TransactionList(_transactions),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:()=>_startAddNewTransaction(context),
      ),
    );
  }
}
