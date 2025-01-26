import 'package:flutter/material.dart';

class NavigationrailComponent extends StatefulWidget {
  const NavigationrailComponent({super.key});

  @override
  State<NavigationrailComponent> createState() =>
      _NavigationrailComponentState();
}

class _NavigationrailComponentState extends State<NavigationrailComponent> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
                disabled: true,
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
            selectedIndex: _selectedIndex),
        const VerticalDivider(thickness: 1, width: 1),
        Center(
          child: Text('Content for Tab $_selectedIndex'),
        )
      ],
    );
  }
}
