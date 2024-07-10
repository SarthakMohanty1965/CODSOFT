import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/main.dart';
import 'package:task_04/textfieldpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _MyLoginPage();
}

class _MyLoginPage extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void check(){
    setState(() {
      if(emailController.text=="sarthak" && passController.text == "9090"){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
                child: SizedBox(
              height: 12,
            )),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3, color: Colors.indigoAccent),
                    ),
                    child: Icon(
                      Icons.circle_rounded,
                      color: Colors.indigo.shade200,
                      size: 100,
                    )),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: const SizedBox(),
                ),
                const Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                  size: 52,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "CHAT APP",
              style: GoogleFonts.alice(
                  textStyle: const TextStyle(
                color: Colors.indigo,
                fontSize: 24,
                wordSpacing: 8,
                decoration: TextDecoration.overline,
              )),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFieldPage(
                controller: emailController,
                hintText: " Email ",
                obscureText: false,
                icon: const Icon(
                  Icons.person_outlined,
                  color: Colors.white54,
                )),
            const SizedBox(
              height: 12,
            ),
            TextFieldPage(
                icon: const Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.white54,
                ),
                controller: passController,
                hintText: "Password",
                obscureText: true),
            ElevatedButton(onPressed: check, child: Text("Login",style: TextStyle(color: Colors.white),)),
              const Expanded(
                child: SizedBox(
              height: 12,
            )),

          ],
        ),
      ),
    );
  }
}
