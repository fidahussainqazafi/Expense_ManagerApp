import 'package:expense_manager/reminder.dart';
import 'package:expense_manager/savings.dart';
import 'package:expense_manager/screens/income/income_screen.dart';
import 'package:expense_manager/screens/expense/expense_screen.dart';
import 'package:expense_manager/settings.dart';
import 'package:flutter/material.dart';

import 'Tools.dart';
import 'about.dart';
import 'debt.dart';
import 'homepage.dart';
import 'more_features.dart';
import 'note.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Personal Expense'),
      ),
      drawer: Drawer(
        child: ListView(

          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [

            const DrawerHeader(


              decoration: BoxDecoration(

                color: Colors.blue,
              ),
              child: Text('Expense Manager'),

            ),
            ListTile(
              leading: const Icon(
                  Icons.warning,
                color: Colors.green,
              ),
              title: const Text('Reminder'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ReminderScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.currency_exchange_outlined,
              color: Colors.green),

              title: const Text('Debt'),

              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) =>const Debt()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.event_note_sharp,
                color: Colors.green,
              ),
              title: const Text('Note'),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) =>const Note()));
              },
            ),
            ListTile(
              leading: const Icon(
                  Icons.calendar_month_outlined,
              color: Colors.green),
              title: const Text('Tools'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tools()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.savings,
                color: Colors.green,
              ),
              title: Text('Savings'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>Savings()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.more,
                color: Colors.green,
              ),
              title: Text('More Features'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> More_Features()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              title: Text('sattings'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.announcement_rounded,
                color: Colors.green,
              ),
              title: Text('About'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
              } ,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green,
              ),
              title: Text('Homepage'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shadowColor: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExpenseScreen()));
              },
              child: const Text(
                  'Expense',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shadowColor: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => const IncomeScreen()));
              },
              child: const Text(
                  'Income',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
