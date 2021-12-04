import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:what2read/Controler/Models/usuario.dart';

Future<void> SingIn(String email, String senha, _formKey, context) async{
  final auth = FirebaseAuth.instance;
  User? user;
  final formState = _formKey.currentState;
  if(formState!.validate()){
    formState.save();
    user = auth.currentUser!;
    //loggedId = user.uid;
    if (user.emailVerified) {
      try{
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: senha).then((_) {
          //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(title: 'loguei',),));
        });
      }catch(e){
        print(e);
      }
    }
  }
}