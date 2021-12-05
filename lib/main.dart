import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:what2read/View/editProfile.dart';
import 'package:what2read/View/accountOptions.dart';
import 'package:what2read/View/findBook.dart';
import 'package:what2read/View/onboarding.dart';
import 'package:what2read/View/register.dart';
import 'package:what2read/View/login.dart';
import 'package:what2read/View/home.dart';
import 'package:what2read/View/userInput.dart';
import 'Controler/Firebase/firebase_init.dart';
import 'View/LivrosFavoritos/livroFavorito.dart';
import 'View/bookPage.dart';
import 'View/verify_email.dart';
import 'View/EncontreSeuLivro/encontreSeuLivro.dart';
import 'package:what2read/View/EncontreSeuLivro/line.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyFirebaseApp());
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
          '/onboarding': (context) => OnboardingPage(title: "Onboarding"),
          '/cadastro': (context) => RegisterPage(title: "Cadastro"),
          '/findbook': (context) => FindBook(title: "Bem Vindo(a)!"),
          '/verify': (context) => VerifyScreen(),
          '/inserirTexto': (context) => UserInput(title: 'Inserir Texto'),
          '/editprof': (context) => EditProfile(title: "Editar perfil"),
          '/detalhes': (context) => BookPage(title: "Detalhes do livro"),
          '/livroFavorito': (context) => LivroFavorito(title: "Livros favoritos"),
          '/encontreSeuLivro': (context) => EncontreSeuLivro(
                textApp: 'teste',
                title: "Livros sugeridos",
              ),
          '/accountOptions': (context) =>
              AccountOptions(title: 'Opções de conta'),
          // '/savedBooks' : (context) => SavedBookList(),
        });
  }
}
