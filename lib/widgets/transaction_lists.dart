import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children:_transactions.map((tx){
          return Card(
              elevation: 5.0,
              child: Row(
                children: [
                  Container(
                    margin:EdgeInsets.symmetric(vertical: 10, horizontal: 15,),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.deepPurple,),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '\$${tx.amount}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          tx.title,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[550]
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
          );
        }).toList(),
      ),
    );
  }
}
