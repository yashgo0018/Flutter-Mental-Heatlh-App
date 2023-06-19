import 'dart:async';

import 'package:flutter/material.dart';

class SendMessageBar extends StatefulWidget {
  const SendMessageBar({super.key});

  @override
  State<SendMessageBar> createState() => _SendMessageBarState();
}

class _SendMessageBarState extends State<SendMessageBar> {
  bool isMicOn = false;
  DateTime _micOnTime = DateTime(0);
  String _micOnTimeString = "0:00";
  late Timer _micOnTimer;
  double initialPosition = 0;
  double currPos = 0;

  void startTimer() {
    _micOnTime = DateTime.now();
    _micOnTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      Duration dur = DateTime.now().difference(_micOnTime);
      String sec = dur.inSeconds.remainder(60).toString().padLeft(2, "0");
      String min = dur.inMinutes.remainder(60).toString();
      String hrs = dur.inHours != 0 ? dur.inHours.toString() : "";
      String sDur =
          "${hrs != "" ? "$hrs:${min.padLeft(2, "0")}:" : "$min:"}${sec.padLeft(2, "0")}";
      setState(() {
        _micOnTimeString = sDur;
      });
    });
  }

  void endTimer() {
    _micOnTimer.cancel();
    _micOnTimeString = "0:00";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!isMicOn) ...[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Write a message...",
                    style: TextStyle(
                      color: Color.fromARGB(180, 0, 0, 0),
                    ),
                  ),
                  Icon(Icons.image_outlined)
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
        ] else ...[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.delete,
                        color: initialPosition - currPos > 120
                            ? Colors.red
                            : Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        _micOnTimeString,
                        style: const TextStyle(
                          color: Color.fromARGB(180, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "<- Slide left to delete",
                    style: TextStyle(
                      color: Color.fromARGB(180, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: isMicOn
                ? const BorderRadius.horizontal(right: Radius.circular(10))
                : BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onLongPressStart: (e) {
              startTimer();
              setState(() {
                isMicOn = true;
                initialPosition = e.localPosition.dx;
                currPos = e.localPosition.dx;
              });
            },
            onLongPressMoveUpdate: (e) {
              setState(() {
                currPos = e.localPosition.dx;
              });
            },
            onLongPressEnd: (e) {
              print(initialPosition - currPos);
              if (initialPosition - currPos > 120) {
                print("cancelled");
              }
              endTimer();
              setState(() {
                isMicOn = false;
                currPos = 0;
                initialPosition = 0;
              });
            },
            child: const Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
