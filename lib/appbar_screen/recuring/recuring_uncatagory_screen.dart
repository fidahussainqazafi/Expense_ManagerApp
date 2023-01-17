import 'package:flutter/material.dart';

class UnCategoryScreen extends StatefulWidget {
  const UnCategoryScreen({Key? key}) : super(key: key);

  @override
  State<UnCategoryScreen> createState() => _UnCategoryScreenState();
}

class _UnCategoryScreenState extends State<UnCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Expense", textAlign: TextAlign.center),
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: PopupMenuButton<int>(
              itemBuilder: (context) => [
               const PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Personal Expense",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              color: Colors.black,
              child: const Icon(Icons.arrow_drop_down),
            ),
          ),
          Padding(
              padding:  const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Alert"),
                        content: const Text(
                          "Please enter a valid number in Amount field!",
                          style: TextStyle(fontSize: 15),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "OK",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15),
                              ))
                        ],
                      );
                    },
                  );
                },
                child: const Icon(
                  Icons.check_outlined,
                ),
              )),
        ],
      ),
      body: const Text("This is for category add screen"),
    );
  }
}
