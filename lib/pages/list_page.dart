import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
      body: Expanded(
        child: ListView.builder(
          itemCount: listaDadosTeste2.length,
          itemBuilder: (context, index) {
            return Center(
              child: Slidable(
                actionPane: SlidableBehindActionPane(),
                child: Container(
                  color: Colors.white,
                  child: ListTile(
                    title: listaDadosTeste2[index]['nome'] +
                        ' - ' +
                        listaDadosTeste2[index]['paisOrigem'],
                    subtitle: listaDadosTeste2[index]['tipo'],
                  ),
                ),
                actions: [
                  IconSlideAction(
                    caption: 'Editar',
                    color: Colors.blue,
                    icon: Icons.edit,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => FormPageEdit(),
                      //     ));
                    },
                  ),
                ],
                secondaryActions: [
                  IconSlideAction(
                    caption: 'Editar',
                    color: Colors.blue,
                    icon: Icons.edit,
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => FormPageEdit(),
                      //     ));
                    },
                  ),
                ],
              ),
            );
          },
        ),
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
