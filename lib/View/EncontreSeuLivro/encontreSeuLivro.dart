import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list.dart';

class EncontreSeuLivro extends StatefulWidget {
  const EncontreSeuLivro({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _EncontreSeuLivroState();
}

class _EncontreSeuLivroState extends State<EncontreSeuLivro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.title)),
      body: List(),
    );
  }
}
