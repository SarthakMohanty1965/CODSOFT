// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String name;
  final double amount;
  final String date;

  const Transaction({super.key,  required this.name, required this.amount, required this.date});
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),),
              Text('Rs.$amount',style: const TextStyle(fontWeight:FontWeight.w500,fontSize: 16,color: Colors.red),),
            ],
          ),
          Text('$date',style: TextStyle(color: Colors.grey),),

        ],
      ),
    );
  }
}