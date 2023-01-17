import 'package:expense_manager/appbar_screen/account/account_transfer_1.dart';
import 'package:expense_manager/appbar_screen/account/account_search.dart';
import 'package:flutter/material.dart';

class AccountTransfer extends StatefulWidget {
  const AccountTransfer({Key? key}) : super(key: key);

  @override
  State<AccountTransfer> createState() => _AccountTransferState();
}

class _AccountTransferState extends State<AccountTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Transfer (0)", textAlign: TextAlign.center),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AccountTransfer1()));
                },
                // onTap: () {
                //   showDialog(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return AlertDialog(
                //         title: Text("Alert"),
                //         content: Text(
                //           "Please enter a valid number in Amount field!",
                //           style: TextStyle(fontSize: 15),
                //         ),
                //         actions: [
                //           TextButton(
                //               onPressed: () {
                //                 Navigator.pop(context);
                //               },
                //               child: Text(
                //                 "OK",
                //                 style: TextStyle(
                //                     color: Colors.green, fontSize: 15),
                //               ))
                //         ],
                //       );
                //     },
                //   );
                // },
                child: const Icon(
                  Icons.filter_1_outlined,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8),
            child: PopupMenuButton<int>(
              onSelected: (result) {
                if (result == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => const Search()));
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Search"),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("this is set AccountTransfer screen"),
          ],
        ),
      ),
    );
  }
}
