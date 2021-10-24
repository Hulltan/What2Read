import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? senha = '';
  String? validaSenha = '';
  String? email = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title:Text(widget.title)),
        body: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          margin: EdgeInsets.all(20.0),
          child: _formUI(),
        ));
  }

  Widget _formUI() {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite novamente a senha',
              ),
              validator: (input) =>
                  input == '' ? 'Repita novamente a senha' : null,
              onSaved: (value) => validaSenha = value,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                if (senha != validaSenha) {
                  showDialog(
                    context: context,
                    builder: (_) => _senhaInvalida(),
                    barrierDismissible: false,
                  );
                } else if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              label: Text("Cadastrar"),
            ),
          ],
        ));
  }

  Widget _senhaInvalida() {
    return AlertDialog(
      title: Text('Erro'),
      content: Text('As senhas inseridas precisam ser iguais'),
      actions: [
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: Text('Ok'),
        )
      ],
    );
  }
}
