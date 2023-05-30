import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String currentPlayer;
  final VoidCallback onPress;

  const Buttons({Key? key, required this.onPress, required this.currentPlayer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white12),
            color: Colors.black26,
          ),
          child: Center(
            child: Text(
              currentPlayer,
              style: const TextStyle(fontSize: 100.0, color: Colors.yellow),
            ),
          ),
        ),
      ),
    );
  }
}
