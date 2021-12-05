import 'package:flutter/material.dart';

class SavedBooksLine extends StatefulWidget {
  var nomeLivro;
  var qntPaginas;
  var genero;
  var livroFavoritado;
  var imagemCapa;

  SavedBooksLine(
      {Key? key,
      @required this.livroFavoritado,
      @required this.nomeLivro,
      @required this.qntPaginas,
      @required this.genero,
      @required this.imagemCapa})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SavedBooksLineState();
}

class _SavedBooksLineState extends State<SavedBooksLine> {
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
      ),
    );
  }
}
