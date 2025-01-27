// ignore_for_file: prefer_const_constructors
import 'package:dfreindsapp/main_menu/home/home.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    MedHubHome(),
    Text(
      'Index 1: Notifications',
      style: optionStyle,
    ),
    Text(
      'Index 2: Add',
      style: optionStyle,
    ),
    Text(
      'Index 3: Chat',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
            BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
              Icon(Icons.notifications_outlined),
              Positioned(
                right: 0,
                child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: Text(
                  '',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
                ),
              ),
              ],
            ),
            label: '',
            ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(6), // Padding untuk memberi jarak di sekitar ikon
              decoration: BoxDecoration(
                color: Color(0xFF0F3759),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/logos/icon1.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false, // Sembunyikan label untuk lebih rapi
        onTap: _onItemTapped,
      ),
    );
  }
}
