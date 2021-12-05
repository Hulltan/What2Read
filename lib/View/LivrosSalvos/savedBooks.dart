import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what2read/View/LivrosSalvos/savedBookList.dart';

class SavedBooks extends StatefulWidget {
  var nomeLivro;
  var qntPaginas;
  var genero;
  var livroFavoritado;
  var imagemCapa;
  final String title;

  SavedBooks(
      {Key? key,
      required this.title,
      @required this.livroFavoritado,
      @required this.nomeLivro,
      @required this.qntPaginas,
      @required this.genero,
      @required this.imagemCapa})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SavedBooksState();
}

class _SavedBooksState extends State<SavedBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.title)),
      body: SavedBookList(
        livroFavoritado: widget.livroFavoritado,
        nomeLivro: widget.nomeLivro,
        genero: widget.genero,
        qntPaginas: widget.qntPaginas,
        imagemCapa: widget.imagemCapa,
      ),
    );
  }
}
