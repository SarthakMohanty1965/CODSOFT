import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:task_04/login_or_register_page.dart';
import 'package:task_04/main.dart';

class AuthPathPage extends StatelessWidget{
  const AuthPathPage({super.key});
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.hasData){
            return MyHomePage();
          }
          else {
            return LoginOrRegistPage();
          }
      },
      ),
    );
  }
}