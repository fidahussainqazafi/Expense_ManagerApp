import 'dart:math';

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PayeeContact extends StatefulWidget {
  const PayeeContact({Key? key}) : super(key: key);

  @override
  State<PayeeContact> createState() => _PayeeContactState();
}

class _PayeeContactState extends State<PayeeContact> {
  List<Contact> contacts = [];

  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContactPermission();
  }

  void getContactPermission() async {
    if (await Permission.contacts.isGranted) {
      fetchContacts();
    } else {
      await Permission.contacts.request();
    }
  }

  void fetchContacts() async {
    contacts = await ContactsService.getContacts();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.white.withOpacity(0.1),
                    offset: const Offset(-3, -3),
                  ),
                  BoxShadow(
                    blurRadius: 7,
                    color: Colors.black.withOpacity(0.7),
                    offset: const Offset(3, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(6),
                color: Color(0xff262626),
              ),
              child: Text(
                contacts[index].givenName![0],
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.primaries[
                  Random().nextInt(Colors.primaries.length)],
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            title: Text(
              contacts[index].givenName!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Colors.cyanAccent,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              contacts[index].phones![0].value!,
              style: TextStyle(
                fontSize: 11,
                color: const Color(0xffC4c4c4),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),
            ),
            horizontalTitleGap: 12,
          );
        },
      ),
    );
  }
}

