import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  final options = const['Targaryen', 'Stark', 'Lannister', 'Baratheon'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes de Flutter'),
        elevation: 50.0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Nombre de ruta'),
            onTap: () {
              //final route = MaterialPageRoute(builder: (context) => ListView1Screen(),);
              Navigator.pushNamed(context, 'card');
            },
          ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
      )
    );
  }
}