import 'package:expense_manager/reminder_informations.dart';
import 'package:flutter/material.dart';
class ReminderScreen extends StatelessWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Today:Date '),
        actions: [

          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>Reminder_Informations()));
          },

              icon:const Icon(Icons.add_box),


          ),


        ],



      ),
    );
  }
}
