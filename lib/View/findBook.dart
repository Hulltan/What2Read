import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindBook extends StatefulWidget {
  const FindBook({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _FindBookState createState() => _FindBookState();
}

class _FindBookState extends State<FindBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title), centerTitle: true),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text("Quero começar a ler",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 20, top: 20),
              ),
              Container(
                child: SvgPicture.asset('assets/undraw_book_lover_mkck.svg'),
                width: 250,
                height: 250,
                margin: EdgeInsets.only(bottom: 10),
              ),
              Container(
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Donec in turpis et justo interdum blandit eu non tellus. Duis sed turpis nisl. '
                    'Quisque laoreet lobortis velit, sed molestie elit iaculis vitae.',
                    textAlign: TextAlign.center),
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.only(bottom: 20),
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Quero encontrar um livro'),
              ),
            ],
          ),
        ),
    );
  }
}
