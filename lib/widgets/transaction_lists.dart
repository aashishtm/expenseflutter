import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children:transactions.map((tx){
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
                      'Rs: ${tx.amount}',
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
