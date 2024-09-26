import 'package:expense_tracker/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import '../../Models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView
        .builder /* tells flutter to build a scrollable widget only when they are visible --> list is longer than the height specified of screen size*/ (
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
      itemCount: expenses.length,
    );
  }
}
