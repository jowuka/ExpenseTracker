import 'package:expenses/widgets/expenses/expenses_list.dart';
import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: "Car", amount: 35000, date: DateTime.now(), category: Category.leisure),
    Expense(title: "Car", amount: 35000, date: DateTime.now(), category: Category.leisure)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
                 ],
      ),
    );
  }
}
