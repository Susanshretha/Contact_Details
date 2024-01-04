import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
        ),
        body: ListView(
          children: [
            CircleAvatar(
              radius: 50,

              child: ClipOval(
                child: Container(
                  width: 100, // Width and height to match the diameter (2 * radius) of the CircleAvatar
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/profile/deku.jpg"),
                      fit: BoxFit.cover,
                      // This covers the circular area
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Text('Susan Shrestha'),
            ),
          ],

        )
    );
  }
}
