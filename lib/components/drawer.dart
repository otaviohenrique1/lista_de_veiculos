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
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Icon(
              Icons.list_alt,
              size: 100,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Cadastro'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormPage(),
                  ));
            },
          ),
          ListTile(
            title: Text('Lista'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(),
                  ));
            },
          ),
          ListTile(
            title: Text('Sobre'),
            onTap: () {
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
