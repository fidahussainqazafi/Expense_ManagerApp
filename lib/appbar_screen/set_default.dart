import 'package:flutter/material.dart';

class SetDefault extends StatefulWidget {
  const SetDefault({Key? key}) : super(key: key);

  @override
  State<SetDefault> createState() => _SetDefaultState();
}

class _SetDefaultState extends State<SetDefault> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;
  bool g = false;
  bool h = false;
  bool i = false;
  bool j = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Set Default"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text("Keyboard auto pops up"),
                    const Spacer(),
                    Switch(value: a,
                      onChanged: (value) {
                        setState(() {
                          a = value;
                          print(a);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("Times"),
                    const Spacer(),
                    Switch(value: b,
                      onChanged: (value) {
                        setState(() {
                          b = value;
                          print(b);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("Split"),
                    const Spacer(),
                    Switch(value: c,
                      onChanged: (value) {
                        setState(() {
                          c = value;
                          print(c);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("Payment Method"),
                    const Spacer(),
                    Switch(value: d,
                      onChanged: (value) {
                        setState(() {
                          d = value;
                          print(d);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("Status"),
                    const Spacer(),
                    Switch(value: e,
                      onChanged: (value) {
                        setState(() {
                          e = value;
                          print(e);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("Ref/Cheque No"),
                    const Spacer(),
                    Switch(value: f,
                      onChanged: (value) {
                        setState(() {
                          f = value;
                          print(f);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("More"),
                    const Spacer(),
                    Switch(value: g,
                      onChanged: (value) {
                        setState(() {
                          g = value;
                          print(g);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("Payee/Payer Auto Fill"),
                    const Spacer(),
                    Switch(value: h,
                      onChanged: (value) {
                        setState(() {
                          h = value;
                          print(h);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),
                Row(
                  children: [
                    const Text("Ref/Cheque No Auto Fill"),
                    const Spacer(),
                    Switch(value:i ,
                      onChanged: (value) {
                        setState(() {
                          i= value;
                          print(i);
                        });
                      },
                      activeTrackColor: const Color.fromRGBO(154, 211, 205, 100),
                      activeColor: Colors.teal,
                    ),
                  ],
                ),
                const Divider(color: Colors.black45,),


              ],
            ),
          )
        ],
      )
    );
  }
}
