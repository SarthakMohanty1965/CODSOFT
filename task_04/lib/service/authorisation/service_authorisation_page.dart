import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService_Page extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailandPassword(
      String email, String password) async {
    try {
      //signIn
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  Future<UserCredential> signUpWtihEmailandPassword(String email,String password) async{
    try{
      UserCredential userCredential =await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }on FirebaseAuthException
    catch(e){
      throw Exception(e.code);
    }
  }

  Future<void> signOut() async{
    return await FirebaseAuth.instance.signOut();
  }
}
