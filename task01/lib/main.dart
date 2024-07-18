import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:task01/add_transaction.dart';
import 'package:task01/transaction_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expense Tracker',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final transactionName = TextEditingController();
  final transactionAmount = TextEditingController();
  final monthlyBudgetController = TextEditingController();

  double monthlyBudget = 12000.0;

  final List _transactions = [
    ['Drinks',249.0,DateTime.now()],
    ['Food',850.0,DateTime.now()],
    ['Grocery',2200.0,DateTime.now()],
  ];
   addTransactionbtn() {
     if (double.tryParse(transactionAmount.text)!= null) {
       Navigator.of(context).pop();
       setState(() {
         _transactions.add([transactionName.text, double.parse(transactionAmount.text), DateTime.now()]);
         transactionAmount.clear();
         transactionName.clear();
       });
     } else {
       // Show an error message to the user
       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid amount')));
     }
  }

  double calculateMonthlyExpense() {
  double total = 0;
  double lastSpent = 0;
  for (var transaction in _transactions) {
    total += transaction[1];
    lastSpent = transaction[1];
  }
  return total;
}
double getLastSpent() {
  return _transactions.isEmpty ? 0 : _transactions.last[1];
}

double calculateTodayExpense() {
  final today = DateTime.now();
  double total = 0;
  for (var transaction in _transactions) {
    if (transaction[2].day == today.day &&
        transaction[2].month == today.month &&
        transaction[2].year == today.year) {
      total += transaction[1];
    }
  }
  return total;
}

  _diagoBuilder(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AddTransaction(addTransaction: addTransactionbtn, transactionName: transactionName, transactionAmount: transactionAmount,);
        });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "DashBoard",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
        ),
        shadowColor: Colors.black,
        elevation: 12,
      ),
      drawer: Drawer(
        elevation: 12,
        width: 280,
        backgroundColor: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Instruction:'),
                    content: const Text('This is a personal expense tracker app.\n\n#Tap on Monthly Budget to Update Budget.\n# Add Transaction\n# Single Tap to Edit Transaction\n# Double tap to delete Transaction.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );

            }, child: const Text("How to Use")),
            TextButton(onPressed: () {
              SystemNavigator.pop();
            }, child: const Text("Exit"))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: InkWell(
                  onTap: (){
                    //Change your monthly budget here,
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Update Monthly Budget'),
                          content: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Monthly Budget',
                            ),
                            controller: monthlyBudgetController,
                            keyboardType: TextInputType.number,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  // Update the monthly budget here
                                  // For example, you can store it in a variable or a database
                                  monthlyBudget = double.parse(monthlyBudgetController.text);
                                });
                                Navigator.of(context).pop();
                              },
                              child: const Text('Save'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Monthly Budget:",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                      Text(
                        'Rs.$monthlyBudget',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.amber),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Total Expense:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                    },
                    child: Container(
                      width: 250,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        border: Border.all(color: Colors.white, width: 0.2),
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 18.0),
                                child: Text(
                                  'Monthly Expense',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text(
                                  'Rs.${calculateMonthlyExpense()}',
                                  style:  TextStyle(fontSize: 24, fontWeight: FontWeight.w500,
                                    color: calculateMonthlyExpense() > monthlyBudget ? Colors.red : Colors.green,),
                                ),
                              ),
                              const SizedBox(height: 18),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text('Last Spent',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.amber)),
                                        Text('Rs.${getLastSpent().toStringAsFixed(2)}',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.red)),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 38),
                                  Column(
                                    children: [
                                       const Text('Today\'s Expense',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.amber)),
                                      Text(
                                          'Rs.${calculateTodayExpense().toStringAsFixed(2)} ',
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          mini: true,
                          onPressed: () {
                            _diagoBuilder(context);
                          },
                          shape: const CircleBorder(eccentricity: 1),
                          tooltip: "Add Transactions ",
                          splashColor: Colors.purple,
                          backgroundColor: Colors.indigo,
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(
                          width: 28,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                thickness: 0.4,
                color: Colors.white12,
              ),
              const Text(
                "CATAGORY:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
              ListView.builder(shrinkWrap: true,
            itemCount: _transactions.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  _showEditDialog(context, _transactions[index]);
                },
                onDoubleTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Delete Transaction'),
                        content: const Text('Are you sure you want to delete this transaction?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _transactions.removeAt(index);
                              });
                              Navigator.of(context).pop();
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Transaction(
                  name:_transactions[index][0],
                  amount:_transactions[index][1] ,
                  date: DateFormat.yMMMd().format(_transactions[index][2]),
                ),
              );
            },)
          
            ],
          ),
        ),
      ),
    );
  }
  void _showEditDialog(BuildContext context, List transaction) {
    final nameController = TextEditingController(text: transaction[0]);
    final amountController = TextEditingController(text: transaction[1].toString());
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Edit Expense'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),

              controller: nameController,
              onChanged: (value) {
                transaction[0] = value;
              },
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              onChanged: (value) {
                transaction[1] = double.parse(value);
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {});
            },
            child: const Text('Save'),
          ),
        ],
      );
    },
  );
}
}
