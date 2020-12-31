import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  final dynamic titulo, subtitulo, imagem;

  ListItem({Key key, this.titulo, this.subtitulo, this.imagem})
      : super(key: key);

  @override
  _ListStateItem createState() => _ListStateItem();
}

class _ListStateItem extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.titulo),
      subtitle: Text(widget.subtitulo),
      shape: widget.imagem,
    );
  }
}
