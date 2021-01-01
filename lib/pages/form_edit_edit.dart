import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/components/botao.dart';
import 'package:lista_de_veiculos/components/form_template.dart';
import 'package:lista_de_veiculos/utils/teste_lista_dados.dart';

class FormPageEdit extends StatefulWidget {
  @override
  _FormPageEditState createState() => _FormPageEditState();
}

class _FormPageEditState extends State<FormPageEdit> {
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> _formData = {};
  // final String mensagemValidacao = 'Campo vazio';

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
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  FormTemplate(
                    initialValue: dadosDetalhesTeste1,
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
