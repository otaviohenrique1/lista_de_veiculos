import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/pages/form_page.dart';
import 'package:lista_de_veiculos/pages/list_page.dart';
import 'package:lista_de_veiculos/pages/sobre.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          TextButton(
            child: Text('Cadastro'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormPage(),
                  ));
            },
          ),
          TextButton(
            child: Text('Lista'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(),
                  ));
            },
          ),
          TextButton(
            child: Text('Sobre'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sobre(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
