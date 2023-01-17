import 'package:flutter/material.dart';

import 'recuring_category_screen.dart';
import 'recuring_uncatagory_screen.dart';
class Recurring extends StatefulWidget {
  const Recurring({Key? key}) : super(key: key);

  @override
  State<Recurring> createState() => _RecurringState();
}

class _RecurringState extends State<Recurring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Personal Expense", textAlign: TextAlign.center),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //
          Padding(
            padding: EdgeInsets.only(right: 28),
            child: PopupMenuButton<int>(
              child: Icon(Icons.arrow_drop_down),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Personal Expense",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              color: Colors.black,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  //add your screen here for income
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddIncomeScreen())
                  );
                },
                child: Icon(
                  Icons.add_circle,
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UnCategoryScreen())
                  );
                },
                child: Icon(
                  Icons.add_circle_outline_sharp,
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: PopupMenuButton(
              onSelected: (result) {
                if (result == 1) {
                  setState(() {
                    AppBar(
                      title:TextField(
                          decoration: InputDecoration(
                              hintText: 'type in journal name...',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ))) ,

                    );
                  });

                }

              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text("Search"),

                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("Active"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Expired"),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text("All"),
                ),
              ],
              // offset: Offset(0, 100),
              // color: Colors.grey,
              elevation: 1,
            ),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("this is  Recurring screen"),
          ],
        ),
      ),
    );
  }
}
