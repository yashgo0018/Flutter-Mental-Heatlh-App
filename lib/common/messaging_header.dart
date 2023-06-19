import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MessagingHeader extends StatelessWidget {
  final String name;
  final String birthdate;
  final bool isOnline;

  const MessagingHeader({
    super.key,
    required this.name,
    required this.birthdate,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(40, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            padding: const EdgeInsets.all(10),
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.keyboard_backspace_rounded,
              color: Colors.white,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: isOnline ? 15 : 18,
              ),
            ),
            if (isOnline) ...[
              const SizedBox(height: 5),
              const Text(
                "Online",
                style: TextStyle(
                  color: Color.fromARGB(180, 255, 255, 255),
                  fontSize: 12,
                ),
              ),
            ]
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(40, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.wifi_calling_3_sharp,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
