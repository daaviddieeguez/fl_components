import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/screens/card_screen.dart';
import 'package:fl_components/screens/home_screen.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/listview2_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Material App',
      home:ListView2Screen(),
      routes: {
        'listview1': (BuildContext context) => ListView1Screen(),
        'listview2': (BuildContext context) => ListView2Screen(),
        'card': (BuildContext context) => CardScreen(),
        'alert': (BuildContext context) => AlertScreen(),
        'home': (BuildContext context) => HomeScreen()
      },
    );
  }
}