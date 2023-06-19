import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentalhealthapp/common/category_tile.dart';
import 'package:mentalhealthapp/common/my_list_tile.dart';
import 'package:mentalhealthapp/common/my_app_bar.dart';
import 'package:mentalhealthapp/common/my_search_bar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
              SizedBox(
                height: 10,
              )
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
            child: ListView(
              children: [
                const SizedBox(height: 35),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
                const SizedBox(height: 20),
                const Column(
                  children: [
                    Row(
                      children: [
                        CategoryTile(
                          name: "Relationship",
                          color: Colors.red,
                        ),
                        CategoryTile(
                          name: "Relationship",
                          color: Colors.purple,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CategoryTile(
                          name: "Relationship",
                          color: Colors.lightBlue,
                        ),
                        CategoryTile(
                          name: "Relationship",
                          color: Colors.orange,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Consultant",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    MyListTile(
                      onTap: () {
                        context.go("/message/10");
                      },
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
