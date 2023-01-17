import 'package:flutter/material.dart';

Future<void> showMyDialogue(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Mileage Conversion"),
          content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Mileage"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "Conversion Rate"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "From"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(hintText: "To"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Note:mileage number saves in Ref No. Field")
                ],
              )),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text("CANCEL")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"))
          ],
        );

      });
}

