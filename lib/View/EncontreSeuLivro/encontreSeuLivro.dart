import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what2read/View/LivrosFavoritos/livroFavorito.dart';
import 'list.dart';

class EncontreSeuLivro extends StatefulWidget {
  const EncontreSeuLivro({Key? key, required this.textApp ,required this.title}) : super(key: key);
  final String title;
  final String textApp;
  @override
  State<StatefulWidget> createState() => _EncontreSeuLivroState();
}

class _EncontreSeuLivroState extends State<EncontreSeuLivro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.title)),
      body: MyListScreen(textApp: widget.textApp),
    );
  }
}
