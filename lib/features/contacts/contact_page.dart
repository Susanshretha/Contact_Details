import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_buddies/features/contacts/contact_details.dart';
import 'package:my_buddies/core/constants/app_strings.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text('MY FRIENDS LIST😂❤️😁'),
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: listOfDetails.length,
            itemBuilder: (context, index)
            {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactDetails(index: index)));
                },
                child: friendName(
                    name: listOfDetails[index].name,
                    email: listOfDetails[index].email,
                    address: listOfDetails[index].address,
                    number: listOfDetails[index].contact),
              );
            }
            )
    );
  }

  Future<void> launchCaller({required String actionMsg}) async {
    if (!await launchUrl(Uri.parse(actionMsg))) {
      throw Exception('Could not launch $actionMsg');
    }
  }

  Widget friendName(
      {required String name,
      required String email,
      String? address,
      required String number}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 24),
                ),
                IconButton(
                    onPressed: () {
                      launchCaller(actionMsg: 'tel:$number');
                      log("Call button clicked");
                    },
                    icon: const Icon(Icons.call))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  address ?? '***',
                  style: const TextStyle(fontSize: 20),
                ),
                IconButton(
                    onPressed: () {
                      launchCaller(actionMsg: 'mailto:$email');
                      if (kDebugMode) {
                        print("Email button clicked");
                      }
                    },
                    icon:  const Icon(Icons.email_outlined))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
