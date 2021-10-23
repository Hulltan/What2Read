import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what2read/View/register.dart';
import 'View/login.dart';
import 'View/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(title: 'What2Read'),
          '/login': (context) => LoginPage(title: "Login"),
          '/cadastro': (context) => RegisterPage(title: "Cadastro"),
        });
  }
}
