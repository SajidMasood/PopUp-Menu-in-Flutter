import 'package:flutter/material.dart';
import 'package:popup_button_menu/screens/about.dart';
import 'package:popup_button_menu/screens/home.dart';
import 'package:popup_button_menu/screens/my_home_page.dart';
import 'package:popup_button_menu/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes: {
        '/home': (context) => const Home(),
        '/about': (context) => const About(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
