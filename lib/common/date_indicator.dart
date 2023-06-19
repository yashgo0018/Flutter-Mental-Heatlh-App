import 'package:flutter/material.dart';

class DateIndicator extends StatelessWidget {
  final String date;

  const DateIndicator({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 2,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          color: const Color.fromARGB(180, 255, 255, 255),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            date,
            style: const TextStyle(
              color: Color.fromARGB(180, 0, 0, 0),
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 2,
          ),
        )
      ],
    );
  }
}
