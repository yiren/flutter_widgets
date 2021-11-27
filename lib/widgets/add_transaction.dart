import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  
  AddTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'amount'),
                    controller: amountController,
                  ),
                  FlatButton(
                    child: Text('Add'),
                    onPressed: () {
                      addTx(
                        titleController.text, 
                        double.parse(amountController.text),
                      );
                    },
                  )  
                ],
              ),
            ),
          );
  }
}