import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what2read/View/findBook.dart';
import 'package:what2read/View/register.dart';
import 'package:what2read/View/login.dart';
import 'package:what2read/View/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'What2Read',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(title: 'What2Read'),
          '/login': (context) => LoginPage(title: "Login"),
          '/cadastro': (context) => RegisterPage(title: "Cadastro"),
          '/findbook': (context) => FindBook(title: "Find",),
        });
  }
}
