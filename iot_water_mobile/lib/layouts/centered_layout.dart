import 'package:flutter/material.dart';

class CenteredLayout extends StatelessWidget {
  final Widget child;

  const CenteredLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(child: child),
      ),
    );
  }
}
