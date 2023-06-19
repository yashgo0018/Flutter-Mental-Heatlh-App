import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String name;
  final String birthdate;

  const MyAppBar({super.key, required this.name, required this.birthdate});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, $name!",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              birthdate,
              style: const TextStyle(
                color: Color.fromARGB(180, 255, 255, 255),
                fontSize: 12,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(40, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
