import 'package:flutter/material.dart';

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
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        reverse: true,
        child: Scaffold(
          appBar: AppBar(title: Text(widget.title), centerTitle: true),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Digite uma sinopse ou trecho do livro',
                  ),
                  validator: (input) => input == '' ? 'Insira um texto' : null,
                  onSaved: (value) => searchText = value!,
                ),
                SizedBox(
                  height: 32,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pushNamed(context, '/encontreSeuLivro');
                    }
                  },
                  label: Text("Pesquisar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
