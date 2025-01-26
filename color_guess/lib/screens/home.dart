import 'package:color_guess/pages/guessing_game_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Guessing Color"),
          ElevatedButton(
            child: const Text("Comenzar"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GuessingGamePage()),
              );
            },
          )
        ],
      )),
    );
  }
}
