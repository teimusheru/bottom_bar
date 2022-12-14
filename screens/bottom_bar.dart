 import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon/screens/sleep_screeen.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
   const BottomBar({Key? key}) : super(key: key);

   @override
   State<BottomBar> createState() => _BottomBarState();
 }

 class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions =<Widget>[
    HomeScreen(),
    sleepscreen(),
    const Text("shopping_cart"),
    const Text("person")
  ];

  void _onItemTapped(int index){

    setState(() {
      _selectedIndex = index;
    });
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("My tickets"),
       ),
       body: Center(
         child: _widgetOptions[_selectedIndex],
       ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _selectedIndex,
         onTap: _onItemTapped,
         elevation: 10,
         showSelectedLabels: false,
         showUnselectedLabels: false,
         selectedItemColor: Colors.blueGrey,
         type: BottomNavigationBarType. fixed,
         unselectedItemColor: const Color(0xFF526480),
         items: const [
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
               activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
               label: "Home"),
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_access_time_regular),
               activeIcon: Icon(FluentSystemIcons.ic_fluent_access_time_regular),
               label: "nights_stay"),

           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
               activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
               label: "shopping_cart"),
           BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
               activeIcon: Icon(FluentSystemIcons.ic_fluent_person_regular),
               label: "person"),
         ],

       ),
     );
   }
 }
