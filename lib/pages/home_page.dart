import 'package:flutter/material.dart';
import 'package:mentalhealthapp/common/my_list_tile.dart';
import 'package:mentalhealthapp/common/feeling_selection_button.dart';
import 'package:mentalhealthapp/common/my_app_bar.dart';
import 'package:mentalhealthapp/common/my_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: const Column(
            children: [
              MyAppBar(
                name: "Jared",
                birthdate: "22 June, 2003",
              ),
              SizedBox(height: 30),
              MySearchBar(),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.more_vert_rounded, color: Colors.white)
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingSelectionButton(emoji: "🤨", name: "Badly"),
                  FeelingSelectionButton(emoji: "😊", name: "Fine"),
                  FeelingSelectionButton(emoji: "😄", name: "Well"),
                  FeelingSelectionButton(emoji: "😀", name: "Excellent"),
                ],
              ),
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
                const SizedBox(height: 35),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exercises"),
                    Icon(Icons.more_horiz),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      MyListTile(
                        onTap: () {},
                        title: "Reading speed",
                        subtile: "8 exercises",
                        color: Colors.red,
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MyListTile(
                        onTap: () {},
                        title: "Reading speed",
                        subtile: "8 exercises",
                        color: Colors.amber,
                        icon: const Icon(
                          Icons.book,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MyListTile(
                        onTap: () {},
                        title: "Reading speed",
                        subtile: "8 exercises",
                        color: Colors.amber,
                        icon: const Icon(
                          Icons.book,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MyListTile(
                        onTap: () {},
                        title: "Reading speed",
                        subtile: "8 exercises",
                        color: Colors.amber,
                        icon: const Icon(
                          Icons.book,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MyListTile(
                        onTap: () {},
                        title: "Reading speed",
                        subtile: "8 exercises",
                        color: Colors.amber,
                        icon: const Icon(
                          Icons.book,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MyListTile(
                        onTap: () {},
                        title: "Reading speed",
                        subtile: "8 exercises",
                        color: Colors.amber,
                        icon: const Icon(
                          Icons.book,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MyListTile(
                        onTap: () {},
                        title: "Reading speed",
                        subtile: "8 exercises",
                        color: Colors.amber,
                        icon: const Icon(
                          Icons.book,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 35),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
