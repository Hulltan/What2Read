import 'package:firebase_auth/firebase_auth.dart';

class Usuario {
  String id;
  String senha;
  String email;
  //final usersRef = Firestore.instance.collection('users');

  Usuario(this.senha, this.email, this.id);
}

