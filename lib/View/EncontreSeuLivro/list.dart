import 'package:flutter/material.dart';
import 'package:what2read/Data/constants.dart';
import 'line.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListState();
}

class _ListState extends State<List>{
  @override
  Widget build(BuildContext context) {
    return list(context);
  }

  Widget list(context) {
    setState(() {});
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemExtent: 80.0,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Line(
          nomeLivro: Constants.livros[index].nomeLivro,
          qntPaginas: Constants.livros[index].qntPaginas,
          gereno: Constants.livros[index].gereno,
          imagemCapa: Constants.livros[index].imagemCapa,
          livroFavoritado: Constants.livros[index].livroFavoritado,);
        }
    );
  }
}