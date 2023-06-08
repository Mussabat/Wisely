import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:green_invest/screens/about.dart';
import 'package:green_invest/screens/edu.dart';
import 'package:green_invest/screens/home.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const Home();
      },
      routes: [
        GoRoute(
          path: 'about',
          builder: (context, state) {
            return const About();
          },
        ), 

        GoRoute(
          path: 'edu',
          builder: (context, state) {
            return const edu();
          },
        ), 
      ],
    ),
  ],
);

Random random = Random();

double doubleInRange(Random source, num start, num end) => 
    source.nextDouble() * (end - start) + start;


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorSchemeSeed: const Color.fromRGBO(56, 107, 33, 100),
    //     useMaterial3: true,
    //   ),
    //   home: const Dashboard(),
    //   debugShowCheckedModeBanner: false,
    // );
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Wisely',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromRGBO(56, 107, 33, 100),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


