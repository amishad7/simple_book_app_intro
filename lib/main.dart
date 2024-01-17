import 'package:flutter/material.dart';
import 'package:untitled6/app/screens/home/view/home.dart';
import 'package:untitled6/app/screens/main/view/mainview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Home(),
        'main': (context) => const MainView(),
      },
    ),
  );
}
