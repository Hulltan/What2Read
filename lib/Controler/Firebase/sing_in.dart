import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> SingIn(String email, String senha, _formKey) async{
  final formState = _formKey.currentState;
  if(formState!.validate()){
    formState.save();
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: senha);
      print('login aceito');
      //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage(),));
    }catch(e){
      print(e);
    }
  }
}