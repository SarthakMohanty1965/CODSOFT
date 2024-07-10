import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/textfieldpage.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _MyLoginPage( );
}
class _MyLoginPage extends State<LoginPage>{
  final emailController = TextEditingController();
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:Border.all(width: 3,color: Colors.indigoAccent),
                    ),
                    child: Icon(Icons.circle_rounded,color: Colors.indigo.shade200,size: 120,)),


                BackdropFilter(filter: ImageFilter.blur(sigmaX: 1,sigmaY:1),
                  child: SizedBox(),
                ),
                const Icon(Icons.send_outlined,color: Colors.black,size: 62,),
              ],
            ),

            SizedBox(height: 12,),
            Text("CHAT APP",style: GoogleFonts.alice(textStyle:TextStyle(color: Colors.white30,fontSize: 22,wordSpacing: 8,)),),
            SizedBox(height: 12,),
            TextFieldPage(controller: emailController, hintText: " Email ", obscureText: false,icon: Icon(Icons.person_outlined,color: Colors.white54,))


          ],
        ),
      ),
    );
  }
}