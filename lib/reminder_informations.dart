import 'package:flutter/material.dart';
class Reminder_Informations extends StatelessWidget {
  const Reminder_Informations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Expense'),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.check))
        ],

      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Description'),
             TextField(
               decoration: InputDecoration(
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(11.0),
                 borderSide: BorderSide(
                   color: Colors.grey,
                   width: 3,
                 )
                 )
               ),
             )
            ],
          )
        ],

      )
      );


  }
}
