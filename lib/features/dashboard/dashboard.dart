
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_buddies/features/contacts/contact_page.dart';
import 'package:my_buddies/features/contacts/home_page.dart';
import 'package:my_buddies/features/contacts/profile_page.dart';

class Dashboard extends StatefulWidget {
 int bottomNavIndex=0;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(title: Text('Dashboard'),),
    body: dashboardBody(bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(


            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.contact_page),
            icon: Icon(Icons.contact_page_outlined),
          // activeIcon: SvgPicture.asset('assets/dashboard/contact_active.svg'),
          //  icon:SvgPicture.asset('assets/dashboard/contact_inactive.svg'),
            label: 'Contact',
          ),//contact
          BottomNavigationBarItem(


            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),//profile
          // BottomNavigationBarItem(
          //
          //
          //   activeIcon: Icon(Icons.home),
          //   icon: Icon(Icons.home_outlined),
          //   label: 'Home',
          // ),
          
        ],
currentIndex: bottomNavIndex,
        onTap: (index)
        {
          setState(() {
            bottomNavIndex =index;
          });

        },
      ),
    );
  }

  Widget dashboardBody(int bottomNavIndex) {

   switch(bottomNavIndex)
       {
     case 0:
       return HomePage();

     case 1:
       return ContactPage();

     case 2:
       return ProfilePage();

     default:
       return Text('Nothing');
   }
  }


}
