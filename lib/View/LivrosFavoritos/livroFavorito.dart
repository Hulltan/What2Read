import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listFavourite.dart';

class LivroFavorito extends StatefulWidget {
  const LivroFavorito({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _LivroFavoritoState();
}

class _LivroFavoritoState extends State<LivroFavorito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.title)),
      body: MyFavouriteScreen(),
    );
  }
}
