import 'package:flutter/material.dart';
import 'package:my_buddies/core/utils/age_utils.dart';
import 'package:my_buddies/features/contacts/widgets/contact_row.dart';
import 'package:my_buddies/models/details.dart';

import '../../core/constants/app_strings.dart';

class ContactDetails extends StatelessWidget {
  ContactDetails({required this.index, super.key});

  final int index;

  final ageUtils = AgeUtils();

  @override
  Widget build(BuildContext context) {
    final detail = listOfDetails[index];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          listOfDetails[index].name,
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              child: Container(
                width: 100,
                // Width and height to match the diameter (2 * radius) of the CircleAvatar
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(listOfDetails[index].image),
                    fit: BoxFit.cover,
                    // This covers the circular area
                  ),
                ),
              ),
            ),
            ContactRow(
                labelName: 'Name', labelValue:
            listOfDetails[index].name),
            ContactRow(
                labelName: 'Number', labelValue:
            listOfDetails[index].contact),
            ContactRow(
              labelName: 'Email',
              labelValue: listOfDetails[index].email,
            ),
            ContactRow(
                labelName: 'DOB',
                labelValue: listOfDetails[index].dob),
            ContactRow(
                labelName: 'Address', labelValue:
            listOfDetails[index].address),
            ContactRow(
              labelName: "age",
              labelValue: ageUtils.calculateAge(detail.dob).toString(),
            ),
          ],
        ),
      ),
    );
  }
}
