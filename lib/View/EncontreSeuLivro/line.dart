import 'package:flutter/material.dart';

import '../bookPage.dart';

class Line extends StatefulWidget {
  var nomeLivro;
  var qntPaginas;
  var genero;
  var livroFavoritado;
  var imagemCapa;
  var id;
  var descricao;

  Line(
      {Key? key,
      @required this.descricao,
      @required this.livroFavoritado,
      @required this.nomeLivro,
      @required this.id,
      @required this.qntPaginas,
      @required this.genero,
      @required this.imagemCapa})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _LineState();
}

var favList = [];

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return buildRow(context);
  }

  Widget buildRow(context) {
    var savedBook;
    return Card(
      child: ListTile(
        leading: Image.network(widget.imagemCapa),
        title: Text(
          widget.nomeLivro,
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
            widget.livroFavoritado ? Icons.favorite : Icons.favorite_border,
            color: widget.livroFavoritado ? Colors.red : null,
          ),
          onPressed: () {
            setState(() {
              if (widget.livroFavoritado) {
                widget.livroFavoritado = false;
                favList.removeWhere((item) => item[0] == widget.id);
                print(favList);
              } else {
                widget.livroFavoritado = true;
                favList.insert(0, [
                  widget.id,
                  widget.nomeLivro,
                  widget.imagemCapa,
                  widget.genero,
                  widget.qntPaginas,
                  widget.livroFavoritado
                ]);
                print(favList);
              }
            });
          },
        ),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => BookPage(
              title: 'Detalhes do livro',
            ),
            settings: RouteSettings(
              arguments: {
                'Nome': widget.nomeLivro,
                'Imagem': widget.imagemCapa,
                'descricao': widget.descricao
              },
            ),
          ),
        ),
      ),
    );
  }
}
