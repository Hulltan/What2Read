import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(findBook());
}


class findBook extends StatelessWidget {
  const findBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("What2Read"),
          centerTitle: true),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text("Quero começar a ler", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
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
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Donec in turpis et justo interdum blandit eu non tellus. Duis sed turpis nisl. '
                    'Quisque laoreet lobortis velit, sed molestie elit iaculis vitae.', textAlign: TextAlign.center),
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.only(bottom: 20),
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Quero encontrar um livro'),
                backgroundColor: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

