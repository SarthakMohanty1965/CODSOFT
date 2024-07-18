

// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  AddTransaction({super.key,required this.addTransaction,required this.transactionName,required this.transactionAmount});
  final _formKey = GlobalKey<FormState>();
  TextEditingController transactionName=TextEditingController();
  TextEditingController transactionAmount=TextEditingController();
  VoidCallback addTransaction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add Transaction"),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Transaction Name",
                border: OutlineInputBorder(),
              ),
              controller: transactionName,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a transaction name";
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Transaction Amount",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: transactionAmount,

              validator: (value) {
                 if (value!.isEmpty || double.tryParse(value) == null) {
                  return "Please enter a valid transaction amount";
                 }
                 return null;
              },
              onSaved: (value)=>transactionAmount.text = value!,
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          child: const Text("Cancel"),
          onPressed: () {

            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          onPressed: addTransaction,
          child: const Text("Add Transaction")
        ),
      ],
    );
  }
}