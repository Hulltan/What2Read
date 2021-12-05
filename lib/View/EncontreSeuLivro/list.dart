import 'package:flutter/material.dart';
import 'package:what2read/Controler/API.dart';
import 'line.dart';
import 'dart:convert';
import 'package:what2read/Model/user.dart';

class MyListScreen extends StatefulWidget {
  var textApp;

  MyListScreen({Key? key, required this.textApp}) : super(key: key);

  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  var livros = <Livro>[];

  _getLivros() {
    API.enviarText(widget.textApp).then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        livros = list.map((model) => Livro.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getLivros();
  }

  dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    // Map arguments = ModalRoute
    //     .of(context)!
    //     .settings
    //     .arguments as Map;
    // var textApp = arguments['textApp'];

    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemExtent: 90.0,
        itemCount: livros.length,
        itemBuilder: (context, index) {
          return Line(
              nomeLivro: livros[index].title,
              // data[index]
              qntPaginas: livros[index].pages,
              //users[index].pages,
              genero: livros[index].choosedGenre[0],
              // + ", " + users[index].choosedGenre[1],
              imagemCapa: livros[index].coverImg,
              livroFavoritado: false);
        });
  }
}
