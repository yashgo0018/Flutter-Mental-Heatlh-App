import 'package:flutter/material.dart';
import 'package:mentalhealthapp/common/my_bottom_navigation_bar.dart';
import 'package:mentalhealthapp/pages/category_page.dart';
import 'package:mentalhealthapp/pages/home_page.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentPageId = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        currentPageId: _currentPageId,
        setPageId: (int value) => {
          setState(() {
            _currentPageId = value;
          })
        },
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: _currentPageId == 1 ? const CategoryPage() : const HomePage(),
      ),
    );
  }
}
