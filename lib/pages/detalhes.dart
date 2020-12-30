import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/components/drawer.dart';

class Detalhes extends StatefulWidget {
  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de veiculos'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Detalhes',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
      ),
      drawer: DrawerApp(),
    );
  }
}
