import 'package:flutter/material.dart';
class BarCode extends StatefulWidget {
  const BarCode({Key? key}) : super(key: key);

  @override
  State<BarCode> createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("This is set BarCode screen"),
          ],
        ),
      ),
    );
  }
}
