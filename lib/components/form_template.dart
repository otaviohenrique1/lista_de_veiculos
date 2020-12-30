import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/components/botao.dart';
import 'package:lista_de_veiculos/components/campo.dart';

class FormTemplate extends StatefulWidget {
  @override
  _FormTemplateState createState() => _FormTemplateState();
}

class _FormTemplateState extends State<FormTemplate> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Campo(),
        Campo(),
        Campo(),
        Campo(),
        Campo(),
        Campo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Botao(),
            Botao(),
          ],
        )
      ],
    );
  }
}
