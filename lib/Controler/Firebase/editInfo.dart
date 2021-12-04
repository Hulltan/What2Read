import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> getUser() async{
  final auth = FirebaseAuth.instance;
  final User user = await auth.currentUser!;

}