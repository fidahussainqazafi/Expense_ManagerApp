import 'package:flutter/material.dart';


class SubStatus extends StatefulWidget {
  const SubStatus({Key? key}) : super(key: key);

  @override
  State<SubStatus> createState() => _SubStatusState();
}

class _SubStatusState extends State<SubStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category:Subcategory"),
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8),
              child: InkWell(
                  onTap: () {
                  },
                  child: const Icon(Icons.search))),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.add,
                ),
              )),
          Padding(
            padding:const EdgeInsets.only(),
            child: PopupMenuButton(
              onSelected: (result) {
                if (result == 2) {
                  Padding(
                    padding: const EdgeInsets.all(8),
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
                  );

                }

              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("Delete All"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("Edit"),

                ),

              ],
              elevation: 1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                ListTile(
                  onTap: (){},
                  title:const Text("Food:Groceries",style: TextStyle(fontSize: 20),),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("F",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
              const  ListTile(title: Text("AutoMobile",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    child: Text("A",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
                const ListTile(title: Text("Entertainment",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Text("E",style: TextStyle(color: Colors.white),),
                  ),
                ),
               const Divider(thickness: 1,),
               const ListTile(title: Text("Family",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Text("F",style: TextStyle(color: Colors.white),),
                  ),
                ),
               const Divider(thickness: 1,),
                const ListTile(title: Text("Food",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text("F",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
               const ListTile(title: Text("Health Care",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.amberAccent,
                    child: Text("H",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
               const ListTile(title: Text("Home Office",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text("H",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
               const ListTile(title: Text("Household",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text("H",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
                const ListTile(title: Text("Insurance",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.pinkAccent,
                    child: Text("I",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
                const ListTile(title: Text("Loans",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    child: Text("L",style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Divider(thickness: 1,),
               const ListTile(title: Text("Others",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    child: Text("O",style: TextStyle(color: Colors.white),),
                  ),
                ),
               const Divider(thickness: 1,),
              const  ListTile(title: Text("Personal",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("P",style: TextStyle(color: Colors.white),),
                  ),
                ),
               const Divider(thickness: 1,),
               const ListTile(title: Text("Tax",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.lime,
                    child: Text("T",style: TextStyle(color: Colors.white),),
                  ),
                ),
               const Divider(thickness: 1,),
               const ListTile(title: Text("Travel",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Text("T",style: TextStyle(color: Colors.white),),
                  ),
                ),
               const Divider(thickness: 1,),
               const ListTile(title: Text("Utilities",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black87,
                    child: Text("U",style: TextStyle(color: Colors.white),),
                  ),
                ),
               const Divider(thickness: 1,),
               const ListTile(title: Text("Vacation",style: TextStyle(fontSize: 20),),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    child: Text("V",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          )
    );
  }
}
