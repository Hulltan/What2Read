import 'package:flutter/material.dart';
import 'package:what2read/View/EncontreSeuLivro/line.dart';

class FavouriteLine extends StatefulWidget {
  var nomeLivro;
  var qntPaginas;
  var genero;
  var imagemCapa;
  var LivroFavoritado;
  var id;
  FavouriteLine({Key? key, @required this.nomeLivro,
     @required this.LivroFavoritado, @required this.id, @required this.qntPaginas, @required this.genero, @required this.imagemCapa})
      : super(key:key);
  @override
  State<StatefulWidget> createState() => _FavouriteLineState();
}
class _FavouriteLineState extends State<FavouriteLine> {
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
        onTap: () {},
        trailing:
        IconButton(
          icon: Icon(
            widget.LivroFavoritado ? Icons.favorite : Icons.favorite_border,
            color: widget.LivroFavoritado ? Colors.red : null,
          ),
          onPressed: () {
            setState(() {
              if (widget.LivroFavoritado) {
                favList.removeWhere((item) => item[0] == widget.id);
                widget.LivroFavoritado = false;
                print(favList);
              } else {
                favList.insert(0, [widget.id ,widget.nomeLivro, widget.imagemCapa ,widget.genero, widget.qntPaginas]);
                widget.LivroFavoritado = true;
                print(favList);
              }
            });
          },
        ),
      ),
    );
  }
}