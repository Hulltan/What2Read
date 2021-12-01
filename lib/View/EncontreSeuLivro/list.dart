import 'package:flutter/material.dart';
import 'package:what2read/Controler/API.dart';
import 'line.dart';
import 'dart:convert';
import 'package:what2read/Data/user.dart';

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  var users = <Livro>[];

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => Livro.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemExtent: 90.0,
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Line(
          nomeLivro: users[index].title, // data[index]
          qntPaginas: users[index].pages, //users[index].pages,
          gereno: users[index].choosedGenre[0], // + ", " + users[index].choosedGenre[1],
          imagemCapa: users[index].coverImg,
          livroFavoritado: false);
      }
  );
  }
}