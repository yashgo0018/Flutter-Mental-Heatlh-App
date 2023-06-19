import 'package:flutter/material.dart';
import 'package:mentalhealthapp/common/message_bubbles/message_bubble.dart';

class TextMessageBubble extends StatelessWidget {
  final bool isSent;
  final String message;
  final DateTime time;

  const TextMessageBubble({
    super.key,
    required this.isSent,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      isSent: isSent,
      time: time,
      child: Text(
        message,
        style: TextStyle(
          color: isSent ? Colors.white : Colors.grey[700],
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    );
  }
}
