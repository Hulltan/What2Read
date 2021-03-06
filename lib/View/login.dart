import 'package:flutter/material.dart';
import 'package:what2read/Controler/Firebase/sing_in.dart';
import 'package:what2read/Controler/Models/usuario.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String senha = '';
  String email = '';
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
          margin: new EdgeInsets.all(20.0),
          child: _formUI(),
        ));
  }

  Widget _formUI() {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 200.0,
                    width: 200.0,
                    child: Image.asset('assets/banner_pequeno.png')),
                SizedBox(
                  height: 32,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (input) => input == '' ? 'Digite um email' : null,
                  onSaved: (value) => email = value!,
                ),
                SizedBox(
                  height: 16,
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
                  onSaved: (value) => senha = value!,
                ),
                SizedBox(
                  height: 32,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.pushNamed(context, '/findbook');
                      //Navigator.pushNamed(context, '/editprof');
                      SingIn(email, senha, _formKey, context);
                    }
                  },
                  label: Text("Entrar"),
                ),
              ],
            )));
  }
}
