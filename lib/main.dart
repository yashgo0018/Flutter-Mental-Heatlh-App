import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentalhealthapp/pages/main_view.dart';
import 'package:mentalhealthapp/pages/messaging_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mental Health App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: "/",
        builder: (context, state) => const MainView(),
        routes: <GoRoute>[
          GoRoute(
            path: "message/:id",
            builder: (context, state) => const MessagingPage(),
          ),
        ],
      ),
    ],
  );
}
