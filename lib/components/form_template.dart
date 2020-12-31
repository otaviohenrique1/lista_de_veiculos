import 'package:flutter/material.dart';
import 'package:lista_de_veiculos/components/campo.dart';

class FormTemplate extends StatefulWidget {
  final dynamic formData, initialValue;

  FormTemplate({Key key, this.formData, this.initialValue});

  @override
  _FormTemplateState createState() => _FormTemplateState();
}

class _FormTemplateState extends State<FormTemplate> {
  final String mensagemValidacao = 'Campo vazio';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Campo(
          initialValue:
              (widget.initialValue == null) ? '' : widget.initialValue['nome'],
          labelText: 'Nome',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['nome'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['paisOrigem'],
          labelText: 'Pais de origem',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['paisOrigem'] = value;
          },
        ),
        Campo(
          initialValue:
              (widget.initialValue == null) ? '' : widget.initialValue['tipo'],
          labelText: 'Tipo',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['tipo'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['imagem'],
          labelText: 'Imagem',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['imagem'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['fabricante'],
          labelText: 'Fabricante',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['fabricante'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['utilizadores'],
          labelText: 'Utilizadores',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['utilizadores'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['quantidadeProduzida'],
          labelText: 'Quantidade produzida',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['quantidadeProduzida'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['peridoServico'],
          labelText: 'Perido de serviço',
          keyboardType: TextInputType.number,
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['peridoServico'] = value;
          },
        ),
        Campo(
          initialValue:
              (widget.initialValue == null) ? '' : widget.initialValue['massa'],
          labelText: 'Massa',
          mensagem: mensagemValidacao,
          keyboardType: TextInputType.number,
          onCalback: (value) {
            widget.formData['massa'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['comprimento'],
          labelText: 'Comprimento',
          mensagem: mensagemValidacao,
          keyboardType: TextInputType.number,
          onCalback: (value) {
            widget.formData['comprimento'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['altura'],
          labelText: 'Altura',
          mensagem: mensagemValidacao,
          keyboardType: TextInputType.number,
          onCalback: (value) {
            widget.formData['altura'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['largura'],
          labelText: 'Largura',
          keyboardType: TextInputType.number,
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['largura'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['tripulacao'],
          labelText: 'Tripulação',
          keyboardType: TextInputType.number,
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['tripulacao'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['custoUnitario'],
          labelText: 'Custo unitário',
          mensagem: mensagemValidacao,
          keyboardType: TextInputType.number,
          onCalback: (value) {
            widget.formData['custoUnitario'] = value;
          },
        ),
        Campo(
          initialValue: (widget.initialValue == null)
              ? ''
              : widget.initialValue['armamento'],
          labelText: 'Armamento',
          mensagem: mensagemValidacao,
          onCalback: (value) {
            widget.formData['armamento'] = value;
          },
        ),
      ],
    );
  }
}
