import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Material App',
      //home:ListView2Screen(),
      initialRoute: 'home',
      routes: {
        'listview1': (BuildContext context) => ListView1Screen(),
        'listview2': (BuildContext context) => ListView2Screen(),
        'card': (BuildContext context) => CardScreen(),
        'alert': (BuildContext context) => AlertScreen(),
        'home': (BuildContext context) => HomeScreen()
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => AlertScreen(), 
        );
      },
    );
  }
}