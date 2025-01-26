import 'package:flutter/material.dart';
import 'package:iot_water_mobile/modules/core/helpers/provisional_router.dart';

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({super.key});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    String name = (_selectedIndex == 0) ? "Home Page" : 'Settings Page';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Iot Water'),
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: routes[_selectedIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }
}
