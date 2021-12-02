import 'package:flutter/material.dart';
import 'package:what2read/Data/user.dart';
import 'package:what2read/View/LivrosSalvos/savedBooksLine.dart';

class SavedBookList extends StatefulWidget {
  var nomeLivro;
  var qntPaginas;
  var genero;
  var livroFavoritado;
  var imagemCapa;

  SavedBookList({Key? key, @required this.livroFavoritado, @required this.nomeLivro,
    @required this.qntPaginas, @required this.genero, @required this.imagemCapa})
      : super(key:key);

  @override
  State<StatefulWidget> createState() => _SavedBookListState();
}

class _SavedBookListState extends State<SavedBookList> {
  var users = <Livro>[];


  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemExtent: 90.0,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return SavedBooksLine(
              nomeLivro: widget.nomeLivro, qntPaginas: widget.qntPaginas, //users[index].pages,
              genero: widget.genero, imagemCapa: widget.imagemCapa,
              livroFavoritado: widget.livroFavoritado);
        }
    );
  }
}