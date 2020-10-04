import 'package:flutter/material.dart';
class NewTransaction extends StatefulWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final textController = TextEditingController();

  final amountController = TextEditingController();

  void submittData(){
    final enteredTitle = textController.text;
    final enteredAmount= double.parse(amountController.text);

    if(enteredTitle.isEmpty || enteredAmount <= 0){
        return;
      }

    widget.addTx(
        enteredTitle,
        enteredAmount
    );
    Navigator.of(context).pop();
  }

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
              onSubmitted: (_) => submittData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount',),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submittData(),
            ),
            RaisedButton(
              onPressed:submittData,
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
