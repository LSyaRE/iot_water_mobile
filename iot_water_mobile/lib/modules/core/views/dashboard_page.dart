import 'package:flutter/material.dart';
import 'package:iot_water_mobile/layouts/layouts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return DashboardLayout();
  }
}
