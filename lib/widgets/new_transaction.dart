import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  final textController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
              onPressed:(){
                addTx(textController.text, double.parse(amountController.text));
              },
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
    );
  }
}
