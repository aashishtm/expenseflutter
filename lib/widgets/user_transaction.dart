import './new_transaction.dart';
import './transaction_lists.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
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

  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
