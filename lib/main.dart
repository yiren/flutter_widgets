import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import './transaction.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<Transaction> txs = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: Text('Chart'),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'amount'),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.purple[600],
                    child: Text(
                      'Add tx',
                    ),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: txs.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.purple,
                        width: 1.5,
                      )),
                      margin: EdgeInsets.all(
                        20,
                      ),
                      padding: EdgeInsets.all(
                        10,
                      ),
                      child: Text(
                        tx.amount.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            tx.title,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                        ),
                        Text(
                          DateFormat.yMd().format(
                            tx.date,
                          ),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
