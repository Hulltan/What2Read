import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what2read/View/register.dart';
import 'Controler/Firebase/firebase_init.dart';
import 'Controler/Firebase/verify_email.dart';
import 'View/login.dart';
import 'View/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyFirebaseApp());
}

class MyApp extends StatelessWidget {
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
          '/verify' : (context) => VerifyScreen(),
        });
  }
}
