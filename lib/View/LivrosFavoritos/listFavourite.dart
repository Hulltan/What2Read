import 'package:flutter/material.dart';
import 'package:what2read/Controler/API.dart';
import 'package:what2read/Model/user.dart';
import 'package:what2read/View/EncontreSeuLivro/line.dart';
import 'lineFavourite.dart';
import 'dart:convert';

class MyFavouriteScreen extends StatefulWidget {
  var textApp;
  MyFavouriteScreen({Key? key}) : super(key: key);
  @override
  createState() => _MyFavouriteScreenState();
}

class _MyFavouriteScreenState extends State<MyFavouriteScreen> {
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
      itemCount: favList.length,
      itemBuilder: (context, index) {
        return FavouriteLine(
          id: favList[index][0],
          LivroFavoritado: favList[index][5],
          nomeLivro: favList[index][1], // data[index]
          qntPaginas: favList[index][4], //users[index].pages,
          genero: favList[index][3], // + ", " + users[index].choosedGenre[1],
          imagemCapa: favList[index][2],);
      }
  );
  }
}