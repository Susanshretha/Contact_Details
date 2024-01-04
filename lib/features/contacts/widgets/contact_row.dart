import 'package:flutter/material.dart';

class ContactRow extends StatelessWidget {
  ContactRow({super.key, required this.labelName, required this.labelValue});

  String labelValue;
  String labelName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Expanded(
           flex: 3,
          child: Text(
            labelName ,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Expanded(flex: 7,
          child: Text(
            ": $labelValue",
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
