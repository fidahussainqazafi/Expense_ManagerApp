import 'package:expense_manager/appbar_screen/auto_fill/auto_fill.dart';
import 'package:expense_manager/appbar_screen/recuring/recurring.dart';
import 'package:expense_manager/appbar_screen/set_default.dart';
import 'package:expense_manager/home_screen.dart';
import 'package:expense_manager/screens/expense/payee_list/payee_list.dart';
import 'package:expense_manager/screens/expense/split_screen.dart';
import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';
import '../../appbar_screen/account/account_transfer.dart';
import '../../appbar_screen/currency_converter.dart';
import '../../calculator/calculator.dart';
import '../expense/category_screen/sub_category.dart';


class IncomeScreen extends StatefulWidget {
  const IncomeScreen({Key? key}) : super(key: key);

  @override
  State<IncomeScreen> createState() => _IncomeScreenState();
}

class _IncomeScreenState extends State<IncomeScreen> {

  TextEditingController amountController = TextEditingController();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(3000),
    );
  }

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
  }

  bool isShow = true;

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
              padding: const EdgeInsets.only(right: 20.0),
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
          Padding(
            padding: const EdgeInsets.only(),
            child: PopupMenuButton(
              onSelected: (result) {
                if (result == 2) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Install Barcode Scanner"),
                        content: const Text(
                          "This application requires Barcode Scanner."
                              "Would you like to install it?",
                          style: TextStyle(fontSize: 15),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "NO",
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 15),
                              )),
                          TextButton(
                              onPressed: () {
                                StoreRedirect.redirect(
                                  androidAppId: "com.srowen.bs.android.simple&hl=en&gl=US",
                                );
                              },
                              child: const Text(
                                "YES",
                                style: TextStyle(
                                    color: Colors.teal, fontSize: 15),
                              ))
                        ],
                      );
                    },
                  );
                }
                else if (result == 3) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
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
                                  decoration:
                                  const InputDecoration(hintText: "Conversion Rate"),
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
                          TextButton(onPressed: () {
                            Navigator.pop(context);

                          }, child: const Text("CANCEL")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("OK"))
                        ],
                      );
                    },
                  );
                }
                else if (result == 4) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CurrencyConverter()));
                }
                else if (result == 5) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AccountTransfer()));
                }
                else if (result == 6) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Recurring()));
                }
                else if (result == 7) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AutoFill()));
                }
                else if (result == 8) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SetDefault()));
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: const Text("Home"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Barcode"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Mileage Conversion"),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text("Currency Converter"),
                ),
                const PopupMenuItem(
                  value: 5,
                  child: Text("Account Transfer"),
                ),
                const PopupMenuItem(
                  value: 6,
                  child: Text("Recurring"),
                ),
                const PopupMenuItem(
                  value: 7,
                  child: Text("Auto Fill"),
                ),
                const PopupMenuItem(
                  value: 8,
                  child: Text("Set Default"),
                ),
              ],
              // offset: Offset(0, 100),
              // color: Colors.grey,
              elevation: 1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    _showTimePicker();
                  },
                  child: const Icon(
                    Icons.timer,
                    size: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _showDatePicker();
                  },
                  child: const Icon(
                    Icons.date_range,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Amount',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Expanded(
                    child: TextField(
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.cyan,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const CalculatorScreen(),
                            ));
                      },
                      icon:const Icon(
                        size: 25,
                        Icons.calculate_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      setState( () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const SplitScreen()));
                      },
                      );
                    },
                    child: const Text(
                      'Split',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'payee',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Expanded(
                    child: TextField(
                      maxLines: 1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle
                          (color: Colors.teal,
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const PayeeList(),
                            ));
                      },
                      icon:const Icon(
                        size: 25,
                        Icons.clean_hands,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey,
                      )),
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                          },
                          child: const Text(
                            'Income',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                  ),
                  IconButton(
                      onPressed: (){
                        showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return const SubStatus();
                            }
                        );
                      },
                      icon: const CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.list_alt,
                            size: 25,
                            color: Colors.white,
                          ))),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                        "Payment",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                        )),
                    Expanded(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Cash',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                    ),
                    IconButton(
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return const SubStatus();
                              }
                          );
                        },
                        icon: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            child: Icon(
                              Icons.credit_card,
                              size: 25,
                              color: Colors.white,
                            ))),
                  ],
                )
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child:Row(
                  children: [
                    const Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                        )),
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                            },
                            child: const Text(
                              'Cleared',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                    ),
                    IconButton(
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return const SubStatus();
                              }
                          );
                        },
                        icon: const CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.check,
                              size: 25,
                              color: Colors.white,
                            ))),
                  ],
                )
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child:Row(
                  children: [
                    const Text(
                        "Cheque No",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                        child: TextField(
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.teal),
                          ),
                        )
                    ),
                    IconButton(
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return const SubStatus();
                              }
                          );
                        },
                        icon: const CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            child: Icon(
                              Icons.print,
                              size: 25,
                              color: Colors.white,
                            ))),
                  ],
                )
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child:Row(
                  children: [
                    const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                        child:TextField(
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.teal),
                          ),
                        )
                    ),
                    IconButton(
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return const SubStatus();
                              }
                          );
                        },
                        icon: const CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: Icon(
                              Icons.camera_alt,
                              size: 25,
                              color: Colors.white,
                            ))),
                  ],
                )
            ),
            const SizedBox(
                height: 10
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(
                          () {
                        isShow = !isShow;
                      },
                    );
                  },
                  child: Text(
                    isShow ? 'Hide' : 'Show',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
                visible: isShow,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                          height: 10
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tag',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          CircleAvatar(
                            child: IconButton(
                              color: Colors.indigoAccent,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.abc,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                          height: 10
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            'Tax',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                              width: 50
                          ),
                          const Expanded(
                            flex: 1 ,
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: TextField(
                                maxLines: 1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.calculate_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                          height: 20
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Quantity',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          const Expanded(
                            flex: 1 ,
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: TextField(
                                minLines: 1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.brown,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_box_sharp,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                          height: 10
                      ),
                    ],
                  ),
                )),
            const SizedBox(
                height: 10
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const AutoFill() ));
                    },
                    child: const Text('Auto Fill')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: const Text('Back')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context){
                            return AlertDialog(
                              title: const Text("Alert"),
                              content: const Text("Please Enter Valid number in Amount field!"),
                              actions:[
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    } ,
                                    child: const Text('OK'))
                              ],
                            );
                          }

                      );
                    },
                    child: const Text('OK & New')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context){
                            return AlertDialog(
                              title: const Text("Alert"),
                              content: const Text("Please Enter Valid number in Amount field!"),
                              actions:[
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    } ,
                                    child: const Text('OK'))
                              ],
                            );
                          }

                      );
                    },
                    child: const Text('OK')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
