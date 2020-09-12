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
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(_transactions),
      ],
    );
  }
}
