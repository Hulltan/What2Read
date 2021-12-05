import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  final String title;

  BookPage({Key? key, required this.title}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    var nome = arguments['Nome'];
    var imagem = arguments['Imagem'];
    var descricao = arguments['descricao'];

    return Scaffold(
        appBar: AppBar(title: Text(widget.title), centerTitle: true),
        body: product(nome,descricao, imagem),
        );
  }

  Widget product(nome, descricao, imagem) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(nome,
                style:
                TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            margin: EdgeInsets.only(bottom: 20, top: 20),
          ),
          Container(
              height: 250.0,
              width: 250.0,
              child: Image.network(imagem)),
          Container(
              height: 250.0,
              width: 400.0,
              child: Text(
                descricao.substring(0, 500) + "...",
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.5, color: Color(0xFF6F8398)),
              ),
              padding: EdgeInsets.all(16)),
        ],
      ),
    );
  }
}
