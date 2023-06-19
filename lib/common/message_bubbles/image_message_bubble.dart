import 'package:flutter/material.dart';
import 'package:mentalhealthapp/common/message_bubbles/message_bubble.dart';

class ImageMessageBubble extends StatelessWidget {
  final bool isSent;
  final String url;
  final DateTime time;

  const ImageMessageBubble({
    super.key,
    required this.isSent,
    required this.url,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return MessageBubble(
      isSent: isSent,
      time: time,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
        child: GestureDetector(
          onTap: () {},
          child: Image(
            image: NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
