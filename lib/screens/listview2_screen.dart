import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  final options = const['Targaryen', 'Stark', 'Lannister', 'Baratheon'];

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 2'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            title: Text(e),
          )).toList()
        ],
      )
    );
  }
}