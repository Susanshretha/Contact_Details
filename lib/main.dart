import 'package:flutter/material.dart';
import 'package:my_buddies/features/dashboard/dashboard.dart';

import 'features/contacts/contact_page.dart';


void main()
{

runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.deepPurple),
       useMaterial3 :true),
      home: Dashboard(),
      // home: ContactPage(),
    );

  }
}




///types of widget
///1.stateless -->stless
/// 2.statefull -->stful
///
///