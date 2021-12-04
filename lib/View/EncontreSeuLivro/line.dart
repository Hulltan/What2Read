import 'package:flutter/material.dart';
import 'package:what2read/View/LivrosSalvos/savedBooks.dart';

class Line extends StatefulWidget {
  var nomeLivro;
  var qntPaginas;
  var genero;
  var livroFavoritado;
  var imagemCapa;
  Line({Key? key, @required this.livroFavoritado, @required this.nomeLivro,
    @required this.qntPaginas, @required this.genero, @required this.imagemCapa})
      : super(key:key);
  @override
  State<StatefulWidget> createState() => _LineState();
}

class _LineState extends State<Line> {
  List<String> nomeLivroSalvo = [];
  List<String> qntPaginasSalvo = [];
  List<String> generoSalvo = [];
  List<String> imagemCapaSalvo = [];

  @override
  Widget build(BuildContext context) {
    return buildRow(context);
  }

  Widget buildRow(context) {
    return Card(
      child: ListTile(
        leading: Image.network(widget.imagemCapa),
        title: Text(
          widget.nomeLivro,
          // style: Theme
          //     .of(context)
          //     .textTheme
          //     .headline6,
        ),
        subtitle: Row(children: [
          Container(
            child: Text(
              widget.genero.toString(),
            ),
          ),
          Container(
            child: IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
                icon: Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 12.0,
                ),
                onPressed: () {}),
          ),
          Container(
            child: Text(
              widget.qntPaginas,
            ),
          ),
        ]),
        trailing: IconButton(
          icon: Icon(
            widget.livroFavoritado ? Icons.bookmark : Icons.bookmark_border,
            color: widget.livroFavoritado ? Colors.yellow : null,
          ),
          onPressed: () {
            setState(() {
              if (widget.livroFavoritado) {
                widget.livroFavoritado = false;
                //print(widget.livroFavoritado);
              } else {
                widget.livroFavoritado = true;
                //print(widget.livroFavoritado);
                nomeLivroSalvo.insert(0, widget.nomeLivro);
                qntPaginasSalvo.insert(0, widget.qntPaginas);
                generoSalvo.insert(0, widget.genero);
                imagemCapaSalvo.insert(0, widget.imagemCapa);
              }
            });
          },
        ),
      ),);
  }
}