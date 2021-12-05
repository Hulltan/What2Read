import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(widget.title))),
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
              height: 250.0,
              width: 250.0,
              child: Image.asset('assets/banner_pequeno.png')),
          SizedBox(
            height: 40,
          ),
          Flexible(
            child: Text(
              'What2Read é um aplicativo que te ajuda quando você tem dúvida '
              'quanto ao que ler. Inserindo um trecho os descrição de um livro,'
              'o aplicativo irá sugerir alguns títulos parecidos, ajudando '
              'na escolha da sua próxima leitura.',
              style: TextStyle(
                color: Colors.black87,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, '/cadastro');
            },
            label: Text("Cadastre-se"),
          ),
          TextButton(
            child: Text(
              'Já tenho uma conta',
              style: TextStyle(
                  color: Colors.black87, decoration: TextDecoration.underline),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },
          ),
        ],
      )),
    ); //floatingActionButton: // This trailing comma makes auto-formatting nicer for build methods
  }
}
