import 'package:flutter/material.dart';
import 'package:mentalhealthapp/common/message_bubbles/image_message_bubble.dart';
import 'package:mentalhealthapp/common/message_bubbles/test_message_bubble.dart';
import 'package:mentalhealthapp/common/messaging_header.dart';
import 'package:mentalhealthapp/common/send_message_bar.dart';

class MessagingPage extends StatelessWidget {
  const MessagingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: const Column(
                children: [
                  MessagingHeader(
                    name: "Jared",
                    birthdate: "22 June, 2003",
                    isOnline: true,
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextMessageBubble(
                                isSent: false,
                                message: "Hello! How are you? Hello! How ",
                                time: DateTime(2022, 1, 1, 17, 1),
                              ),
                              TextMessageBubble(
                                isSent: true,
                                message: "Hello! How are you? Hello! How ",
                                time: DateTime(2022, 1, 1, 17, 1),
                              ),
                              ImageMessageBubble(
                                isSent: true,
                                url:
                                    "https://play-lh.googleusercontent.com/LvJB3SJdelN1ZerrndNgRcDTcgKO49d1A63C5hNJP06rMvsGkei-lwV52eYZJmMknCwW",
                                time: DateTime(2022, 1, 1, 17, 1),
                              ),
                              ImageMessageBubble(
                                isSent: true,
                                url:
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/PDF_file_icon.svg/640px-PDF_file_icon.svg.png",
                                time: DateTime(2022, 1, 1, 17, 1),
                              ),
                              ImageMessageBubble(
                                isSent: false,
                                url:
                                    "https://smallpdf.com/assets/img/fb/jpg.png",
                                time: DateTime(2022, 1, 1, 17, 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SendMessageBar(),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
