import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  final options = const['Targaryen', 'Stark', 'Lannister', 'Baratheon'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 1'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
            leading: Icon(Icons.alarm),
            title: Text(e),
          )).toList()
        ],
      )
    );
  }
}