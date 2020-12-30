import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/components/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              'Bem Vindo',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
      ),
      drawer: DrawerApp(),
    );
  }
}
