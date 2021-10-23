import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? senha = '';
  String? email = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                Center(child: Text(widget.title, textAlign: TextAlign.center))),
        body: Container(
          margin: new EdgeInsets.all(20.0),
          child: new Form(
            child: _formUI(),
          ),
        ));
  }

  Widget _formUI() {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          // alignment: WrapAlignment.center,
          children: <Widget>[
            Container(
                height: 200.0,
                width: 200.0,
                child: Image.asset('assets/banner_pequeno.png')),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              validator: (input) => input == '' ? 'Digite um email' : null,
              onSaved: (value) => email = value,
            ),
            TextFormField(
              obscureText: true,
              //deixa a senha secreta
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
              validator: (input) => input == '' ? 'Digite uma senha' : null,
              onSaved: (value) => senha = value,
              //maxLength: 10, coloca um limite no número de caracteres;
            ),
            FloatingActionButton.extended(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                }
              },
              label: Text("Entrar"),
            ),
          ],
        ));
  }
}
