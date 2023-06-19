import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final bool isSent;
  final DateTime time;
  final Widget child;

  const MessageBubble({
    super.key,
    required this.isSent,
    required this.time,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        constraints: const BoxConstraints(maxWidth: 250),
        decoration: BoxDecoration(
          color: isSent ? Colors.blue[800] : Colors.blueGrey[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              child,
              const SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "${time.hour % 12}:${time.minute.toString().padLeft(2, '0')} ${time.hour >= 12 ? 'pm' : 'am'}",
                  style: TextStyle(
                    color: isSent ? Colors.white : Colors.grey[600],
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
