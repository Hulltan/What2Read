import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:what2read/Controler/Firebase/verify_email.dart';

Future<void> SingUp(String email, String senha, _formKey, context) async{
  final auth = FirebaseAuth.instance;
  late User user;
  final formState = _formKey;

  if(formState!.validate()){
    formState.save();
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: senha);
      user = auth.currentUser!;
      user.sendEmailVerification().then((value) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => VerifyScreen()));
      });
    }catch(e){
      print(e);
    }
  }
}