import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lista_de_veiculos/pages/detalhes.dart';
import 'package:lista_de_veiculos/pages/form_edit_edit.dart';
// import 'package:lista_de_veiculos/components/list_item.dart';
import 'package:lista_de_veiculos/utils/teste_lista_dados.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de veiculos'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: listaDadosTeste2.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Slidable(
                    actionPane: SlidableBehindActionPane(),
                    child: Container(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(listaDadosTeste2[index]['nome'] +
                            ' - ' +
                            listaDadosTeste2[index]['paisOrigem']),
                        subtitle: Text(listaDadosTeste2[index]['tipo']),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Detalhes(),
                              ));
                        },
                      ),
                    ),
                    actions: [
                      IconSlideAction(
                        caption: 'Editar',
                        color: Colors.blue,
                        icon: Icons.edit,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FormPageEdit(),
                              ));
                        },
                      ),
                    ],
                    secondaryActions: [
                      IconSlideAction(
                        caption: 'Remover',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () {
                          showDialog(
                              context: context,
                              child: AlertDialog(
                                title: Text('Confirmar remoção do item'),
                                actions: [
                                  RaisedButton(
                                    child: Text('Sim'),
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  RaisedButton(
                                    child: Text('Não'),
                                    color: Colors.red,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/*
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Lista de veiculos'),
    ),
    body: ListView(
      padding: EdgeInsets.all(20),
      children: List.generate(50, (index) {
        return Center(
          child: ListItem(
            titulo: listaDadosTeste1['nome'] +
                ' - ' +
                listaDadosTeste1['paisOrigem'],
            subtitulo: listaDadosTeste1['tipo'],
          ),
        );
      }),
    ),
  );
}
*/
