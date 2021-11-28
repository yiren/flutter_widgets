import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../model/transaction.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> txs;

  TransactionList(this.txs);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
              itemBuilder: (ctx, index) {
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
                          txs[index].amount.toString(),
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
                              txs[index].title,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown),
                            ),
                          ),
                          Text(
                            DateFormat.yMd().format(
                              txs[index].date,
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
              },
              itemCount: txs.length,
            ),
    );
  }
}