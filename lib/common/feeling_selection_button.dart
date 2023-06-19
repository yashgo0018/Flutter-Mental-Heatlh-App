import 'package:flutter/material.dart';

class FeelingSelectionButton extends StatelessWidget {
  final String name;
  final String emoji;

  const FeelingSelectionButton(
      {super.key, required this.name, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color.fromARGB(40, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 36),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
