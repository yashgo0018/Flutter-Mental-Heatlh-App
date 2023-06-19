import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentPageId;
  final Function setPageId;

  const MyBottomNavigationBar(
      {super.key, required this.currentPageId, required this.setPageId});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.mail,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "",
        ),
      ],
      currentIndex: currentPageId,
      onTap: (value) => setPageId(value),
    );
  }
}
