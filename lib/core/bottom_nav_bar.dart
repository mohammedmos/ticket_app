import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    const Center(child: Text('Home')),
    const Center(child:Text('Search')),
    const Center(child:Text('Tickets')),
    const Center(child:Text('Profile')),
  ];
  int _selectedScreen = 0;
  void _onScreenChange(int index){
    setState(() {
      _selectedScreen = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Ticket')),
      body: appScreens[_selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreen,
          onTap: _onScreenChange,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueGrey,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                label: 'Home',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                label: 'Search',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                label: 'Tickets',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                label: 'Profile',
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
          ]),
    );
  }
}
