import 'package:expense_manager/screens/expense/payee_list/payee_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_redirect/store_redirect.dart';

import 'boxes.dart';

class PayeeList extends StatefulWidget {
  const PayeeList({Key? key}) : super(key: key);

  @override
  State<PayeeList> createState() => _PayeeListState();
}

class _PayeeListState extends State<PayeeList> {
  static ValueNotifier<String> enteredvalue = ValueNotifier('');
  final titleController = TextEditingController();

  List<PayeeModel> list = [];

  String title = "";

  String get id1 => this.id1;

 @override
  // void initState() {
  //   super.initState();
  //
  //
  //   // List sss = data.getalrecord();
  //
  //   // if(sss.length > 0) {
  //   //
  //   // } else {
  //     // add default records to database;
  //   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payee List"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          //

          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  StoreRedirect.redirect(
                    androidAppId: "com.google.android.contacts",
                  );
                },
                // onTap: (){
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (context) => PayeeContact()));
                // },
                // onTap: _launchUrl,
                // onTap: (){
                //   _openJioSavaan;
                // },
                child: Icon(
                  Icons.contacts_rounded,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.filter_list_outlined,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.edit,
                ),
              )),
        ],
      ),
      // FutureBuilder(
      //   future: Hive.openBox("predb"),
      //   builder: (context, snapshot) {
      //     return Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Card(
      //           child: Padding(
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     // Text(snapshot.data!.put("1", "amazaon").toString()),
      //                     Text(snapshot.data!.get("1").toString()),
      //
      //                     Spacer(),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data!.put("1", "Amazon");
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.undo)),
      //                     SizedBox(
      //                       width: 15,
      //                     ),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.delete("1");
      //
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.delete))
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Card(
      //           child: Padding(
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     Text(snapshot.data!.get("2").toString()),
      //                     Spacer(),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.put("2", "Best Buy");
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.undo)),
      //                     SizedBox(
      //                       width: 15,
      //                     ),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.delete("2");
      //
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.delete))
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Card(
      //           child: Padding(
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     Text(snapshot.data!.get("3").toString()),
      //                     Spacer(),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.put("3", "Costco");
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.edit)),
      //                     SizedBox(
      //                       width: 15,
      //                     ),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.delete("3");
      //
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.delete))
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Card(
      //           child: Padding(
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     Text(snapshot.data!.get("4").toString()),
      //                     Spacer(),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.put("4", "Walmart");
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.edit)),
      //                     SizedBox(
      //                       width: 15,
      //                     ),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.delete("banks");
      //
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.delete))
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Card(
      //           child: Padding(
      //             padding: const EdgeInsets.all(20),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   children: [
      //                     Text(snapshot.data!.get("5").toString()),
      //                     Spacer(),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.put("5", "NA");
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.edit)),
      //                     SizedBox(
      //                       width: 15,
      //                     ),
      //                     InkWell(
      //                         onTap: () {
      //                           snapshot.data?.delete("NA");
      //
      //                           setState(() {});
      //                         },
      //                         child: Icon(Icons.delete))
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     );
      //   },
      // ),

      body: Stack(
        children: [
          Container(
            child:  ValueListenableBuilder<Box<PayeeModel>>(
      valueListenable:
      Boxes.getDAta().listenable(),
        builder: (context, box, _) {
          var data = box.values.toList();
          if (data.length < 1  ) {
            print("Data.length is less than one and the length is ${box.length}");
            // call();




            // Text(data[1].titletwo.toString());
            // print("bial${data[0].titletwo.toString()}");
            // Text(snapshot.data!.get("1").toString());
            // print("${snapshot.data.get("1").toString()}");
            // title = list[list.length -1].title +1.toString();
            // print("objectobjectobjectobject");
            // setState(() {
            //
            // });
          }
          print("Data.length is greater than one");

          return ListView.builder(
              itemCount: box.length,
              reverse: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(data[index].title.toString()),
                    // Text(snapshot.data!.get("1").toString()),
                    // print("${snapshot.data.get("1").toString()}"),

                            Spacer(),
                            InkWell(
                                onTap: () {
                                  _update(
                                    data[index],
                                    data[index].title.toString(),
                                  );
                                },
                                child: Icon(Icons.edit)),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                                onTap: () {
                                  delete(data[index]);
                                },
                                child: Icon(Icons.delete))
                          ],

                        ),
                      ],
                    ),
                  ),
                );
              });
        }
        )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                    child:Container(
                      margin: EdgeInsets.only(bottom:20,right:20 ,left: 20,),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                      child: TextField(
                        // controller: textEditingController,
                        controller: titleController,

                        decoration: InputDecoration(
                            hintText: "enter a item",
                            border: InputBorder.none
                        ),
                        onTap: (){
                          //  work from here to get valuelistner
                        },
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.only(bottom:20 ,right: 20),
                  child: ElevatedButton(
                    onPressed: () async {
                      // _addItem(textEditingController.text);
                      var data = PayeeModel(
                        title: titleController.text,
                      );
                      final box = Boxes.getDAta();
                      // box.add(data);
                      box.add(data);
                      var tring = "sss";
                      // data.save();
                      titleController.clear();
                      print(box);
                    },
                    child: Icon(Icons.add),

                  ),
                )
              ],
            ),
          )


        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     _showMyDialogue();
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }

  void delete(PayeeModel notesModel) async {
    notesModel.delete();
  }

  Future<void> _update(PayeeModel notesModel, String title) async {
    titleController.text = title;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit"),
            content: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: "Enter an item"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    notesModel.title = titleController.text.toString();
                    notesModel.save();
                    titleController.clear();
                  },
                  child: Text("Ok")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"))
            ],
          );
        });
  }

  Future<void> _showMyDialogue() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Add Payee"),
            content: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(hintText: "Enter"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    var data = PayeeModel(
                      title: titleController.text,
                    );
                    final box = Boxes.getDAta();
                    // box.add(data);
                    box.add(data);
                    var tring = "sss";
                    // data.save();
                    titleController.clear();
                    print(box);
                  },
                  child: Text("Add")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"))
            ],
          );
        });
  }
}

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw 'Could not launch $_url';
//   }
// }
// _openJioSavaan (data) async
// {String dt = data['JioSavaan'] as String;
// bool isInstalled = await DeviceApps.isAppInstalled('com.google.android.contacts');
// if (isInstalled != false)
// {
//   AndroidIntent intent = AndroidIntent(
//       action: 'action_view',
//       data: dt
//   );
//   await intent.launch();
// }
// else
// {
//   String url = dt;
//   if (await canLaunch(url))
//     await launch(url);
//   else
//     throw 'Could not launch $url';
// }
// }

Future<void> call () async {
  print("Started to open boxx on nulll");

  var boxx = await Hive.openBox("notess");
  print("adding data");

  boxx.put('1' ,'Amazon');
  print("checking if id 1 is added == ${  boxx.get("1").toString()  }");
  boxx.put('2' ,'Best Buy');
  boxx.put('3' ,'Costco');
  boxx.put('4' ,'Walmart');
  boxx.put('5' ,'NA');
  print("completed");
  // Text(boxx.get("2").toString());


  // boxx.put('details',{
  //   '01' : 'Amazon',
  //   '02' : 'Best Buy',
  //   '03' : 'Costco',
  //   '04' : 'Walmart',
  //
  // });

}