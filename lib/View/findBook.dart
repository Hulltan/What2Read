import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:what2read/View/drawerBar.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: DrawerBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Quero começar a ler",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontSize: 25),
              ),
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
                'Aqui começa sua jornada pelo What2Read. Clicando no botão '
                'abaixo uma nova tela será exibida, onde a descrição '
                'ou trecho poderá ser inserido. Mas atenção: Apenas palavras'
                'em inglês.',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.deepPurple),
              ),
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.only(bottom: 20),
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.pushNamed(context, '/inserirTexto');
              },
              label: Text('Quero encontrar um livro'),
            ),
          ],
        ),
      ),
    );
  }
}
