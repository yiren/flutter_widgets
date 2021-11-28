import 'package:flutter/material.dart';
import '../widgets/add_transaction.dart';
import '../widgets/transaction_list.dart';

import 'package:intl/intl.dart';

import '../model/transaction.dart';

class UserTranaction extends StatefulWidget {
  

  @override
  _UserTranactionState createState() => _UserTranactionState();
}

class _UserTranactionState extends State<UserTranaction> {
  final List<Transaction> _txs = [
    Transaction(
      id: 'tx1',
      title: 'Screen Protector',
      amount: 240,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'tx2',
      title: 'USB3 Hub',
      amount: 247,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String newTitle, double newAmount){
    final newTx = Transaction(title: newTitle, amount: newAmount, date: DateTime.now(), id: DateTime.now().toString(),);
    setState(() {
      this._txs.add(newTx);
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Column( // List View requires parent height to render, otherwise it is infinite height.
          children: [    // load all children in this case. Use builder to render visible items at the first time.
            AddTransaction(_addTransaction), 
            TransactionList(_txs),
          ],
        ),
    );
  }
}