import 'package:flutter/material.dart';
import 'package:iot_water_mobile/layouts/centered_layout.dart';

class AuthLayout extends StatelessWidget {
  final List<Widget> children;

  const AuthLayout({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return CenteredLayout(child: Column(spacing: 20, children: children));
  }
}
