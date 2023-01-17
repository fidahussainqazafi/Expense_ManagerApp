import 'package:flutter/material.dart';
import 'add_auto_fill.dart';

class AutoFill extends StatefulWidget {
  const AutoFill({Key? key}) : super(key: key);

  @override
  State<AutoFill> createState() => _AutoFillState();
}

class _AutoFillState extends State<AutoFill> {
  bool i = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auto Fill", textAlign: TextAlign.center),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[

          Padding(
              padding: const EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {},
                  child: i
                      ? const Icon(Icons.done_rounded)
                      : const Icon(Icons.filter_list_outlined))),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AddAutoFill()));
                },
                child: const Icon(
                  Icons.add,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(),
            child: PopupMenuButton(
              onSelected: (result) {
                if (result == 1) {}
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Pre-Fill for Widget"),
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
          children: const [
            Text("this is set AutoFill screen"),
            SizedBox(height: 10,),
      ],
        ),
      ),
    );
  }
}
