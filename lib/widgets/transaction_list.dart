import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../model/transaction.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> txs;

  TransactionList(this.txs);
  
  @override
  Widget build(BuildContext context) {
    return Column(
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
          );
  }
}