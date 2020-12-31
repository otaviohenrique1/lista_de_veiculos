import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/components/botao.dart';
// import 'package:lista_de_veiculos/components/campo.dart';
import 'package:lista_de_veiculos/components/form_template.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> _formData = {};
  final String mensagemValidacao = 'Campo vazio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  FormTemplate(
                    formData: _formData,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Botao(
                        labelText: 'Salvar',
                        colorButton: Colors.blue,
                        textColor: Colors.white,
                        onCalback: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            Navigator.of(context).pop();
                          }
                        },
                        padding: EdgeInsets.only(right: 10),
                      ),
                      Botao(
                        labelText: 'Limpar',
                        colorButton: Colors.red,
                        textColor: Colors.white,
                        onCalback: () {
                          _formKey.currentState.reset();
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/*
ListView(
  children: [
    Campo(
      labelText: 'Nome',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['nome'] = value;
      },
    ),
    Campo(
      labelText: 'Pais de origem',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['paisOrigem'] = value;
      },
    ),
    Campo(
      labelText: 'Tipo',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['tipo'] = value;
      },
    ),
    Campo(
      labelText: 'Imagem',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['imagem'] = value;
      },
    ),
    Campo(
      labelText: 'Fabricante',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['fabricante'] = value;
      },
    ),
    Campo(
      labelText: 'Utilizadores',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['utilizadores'] = value;
      },
    ),
    Campo(
      labelText: 'Quantidade produzida',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['quantidadeProduzida'] = value;
      },
    ),
    Campo(
      labelText: 'Perido de serviço',
      keyboardType: TextInputType.number,
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['peridoServico'] = value;
      },
    ),
    Campo(
      labelText: 'Massa',
      mensagem: mensagemValidacao,
      keyboardType: TextInputType.number,
      onCalback: (value) {
        _formData['massa'] = value;
      },
    ),
    Campo(
      labelText: 'Comprimento',
      mensagem: mensagemValidacao,
      keyboardType: TextInputType.number,
      onCalback: (value) {
        _formData['comprimento'] = value;
      },
    ),
    Campo(
      labelText: 'Altura',
      mensagem: mensagemValidacao,
      keyboardType: TextInputType.number,
      onCalback: (value) {
        _formData['altura'] = value;
      },
    ),
    Campo(
      labelText: 'Largura',
      keyboardType: TextInputType.number,
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['largura'] = value;
      },
    ),
    Campo(
      labelText: 'Tripulação',
      keyboardType: TextInputType.number,
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['tripulacao'] = value;
      },
    ),
    Campo(
      labelText: 'Custo unitário',
      mensagem: mensagemValidacao,
      keyboardType: TextInputType.number,
      onCalback: (value) {
        _formData['custoUnitario'] = value;
      },
    ),
    Campo(
      labelText: 'Armamento',
      mensagem: mensagemValidacao,
      onCalback: (value) {
        _formData['armamento'] = value;
      },
    ),
  ],
)
*/
