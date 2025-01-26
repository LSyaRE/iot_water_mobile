import 'package:color_guess/const/colors.dart';
import 'package:flutter/material.dart';

class GuessingGamePage extends StatefulWidget {
  const GuessingGamePage({super.key});

  @override
  State<GuessingGamePage> createState() => _GuessingGamePageState();
}

class _GuessingGamePageState extends State<GuessingGamePage> {
  String dropdownValue = "";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text("Hola "));
  }
}