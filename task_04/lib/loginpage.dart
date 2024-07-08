import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyLoginPage();
}
class _MyLoginPage extends State<StatefulWidget>{
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            Icon(Icons.chat_outlined,color: Colors.black,size: 72,),

          ],
        ),
      ),
    );
  }
}