import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopUp Menu'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            // onclicked k lie
            onSelected: (value) {
              // you logic
              Navigator.pushNamed(context, value.toString());
              print('____________________ $value ____________________');
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  value: '/home',
                  child: Text('Home'),
                ),

                // 2nd
                PopupMenuItem(
                  value: '/about',
                  child: Text('About'),
                ),

                // 3rd
                PopupMenuItem(
                  value: '/profile',
                  child: Text('Profile'),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
