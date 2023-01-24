import 'package:flutter/material.dart';
import 'package:flutter_application_8/Pages/HomePage.dart';
import 'package:flutter_application_8/Pages/SettingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO DO',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  var currentIndex = 0;
  var arrayIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget Body;
    if (currentIndex == 0) {
      Body = const MyHomePage();
    } else {
      Body = const SettingsPage();
    }
    bool isChecked = false;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
      ),
      body: Body,
    );
  }
}
