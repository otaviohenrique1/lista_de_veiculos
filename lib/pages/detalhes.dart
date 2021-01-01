import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/components/drawer.dart';
import 'package:lista_de_veiculos/pages/form_edit_edit.dart';
import 'package:lista_de_veiculos/utils/teste_lista_dados.dart';

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
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              'Nome: ' + dadosDetalhesTeste1['nome'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Pais de Origem: ' + dadosDetalhesTeste1['paisOrigem'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Tipo: ' + dadosDetalhesTeste1['tipo'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Fabricante: ' + dadosDetalhesTeste1['fabricante'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Utilizadores: ' + dadosDetalhesTeste1['utilizadores'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Quantidade produzida: ' +
                  dadosDetalhesTeste1['quantidadeProduzida'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Perido de serviço: ' + dadosDetalhesTeste1['peridoServico'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Massa: ' + dadosDetalhesTeste1['massa'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Comprimento: ' + dadosDetalhesTeste1['comprimento'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Altura: ' + dadosDetalhesTeste1['altura'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Largura: ' + dadosDetalhesTeste1['largura'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Tripulação: ' + dadosDetalhesTeste1['tripulacao'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Custo unitário: ' + dadosDetalhesTeste1['custoUnitario'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Armamento: ' + dadosDetalhesTeste1['armamento'],
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                child: Text('Editar'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FormPageEdit(),
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
