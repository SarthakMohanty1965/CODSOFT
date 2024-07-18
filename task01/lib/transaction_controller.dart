import 'package:task01/transaction_model.dart';

class TransactionController  {
  final List _transactions = [];

  void addTransaction(String name, double amount,String date) {
    _transactions.add(Transaction(name: name, amount: amount, date:date));

  }
  List get transactions => _transactions;
  

  void removeTransaction(Transaction transaction) {
    _transactions.remove(transaction);
  }
}