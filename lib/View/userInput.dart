import 'package:flutter/material.dart';
import 'package:what2read/Controler/API.dart';

import 'EncontreSeuLivro/encontreSeuLivro.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  String searchText = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text(widget.title)),
        body: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          margin: EdgeInsets.all(20.0),
          child: formDescription(context),
        ));
  }

  Widget formDescription(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
        reverse: true,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Descreva o livro que você gostaria de ler",
          style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  fontSize: 25),
            ),
        SizedBox(
          height: 30,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87),
          decoration: InputDecoration(
            labelText: 'Apenas palavras em inglês',
            ),
          validator: (input) => input == '' ? 'Insira um texto' : null,
          onSaved: (value) => searchText = value!,
        ),
        SizedBox(
          height: 64,
        ),
        FloatingActionButton.extended(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              //API.enviarText(searchText);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EncontreSeuLivro(textApp: searchText,title: 'Livros sugeridos',),
                  ));
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (BuildContext context) => EncontreSeuLivro(title: 'Livros sugeridos',),
              //     settings: RouteSettings(arguments: {'index': searchText})));
            }
          },
          label: Text("Encontre o livro"),
        )
      ],
    ),),);
  }
}
