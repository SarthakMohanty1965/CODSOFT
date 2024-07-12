import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/main.dart';
import 'package:task_04/textfieldpage.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key,required this.onTap});
  @override
  State<LoginPage> createState() => _MyLoginPage();
}

class _MyLoginPage extends State<LoginPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void check() {
    setState(() {
      if (emailController.text == "sarthak" && passController.text == "9090") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyHomePage()));
      }
    });
  }
  void SignIn(){}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 3, color: Colors.teal.shade100),
                          ),
                          child: Icon(
                            Icons.circle_rounded,
                            color: Colors.teal.shade300,
                            size: 100,
                          )),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
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
                    height: 28,
                  ),
                  Text(
                    "Chat App",
                    style: GoogleFonts.cedarvilleCursive(
                        textStyle: const TextStyle(
                      color: Colors.teal,
                      fontSize: 38,
                      wordSpacing: 8,
                    )),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text('You were missied too much!\n         Time to Dig in ...',style: GoogleFonts.roboto(textStyle:const TextStyle(color: Colors.white,wordSpacing:3,fontWeight: FontWeight.w100)),),
                  const SizedBox(
                    height: 18,
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
                    height: 18,
                  ),
                  TextFieldPage(
                      icon: const Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.white54,
                      ),
                      controller: passController,
                      hintText: "Password",
                      obscureText: true),
                  const SizedBox(
                    height: 18,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.white),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      onPressed: SignIn,
                      child: const Text(
                        "     Login     ",
                        style: TextStyle(color: Colors.white,),
                      )),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "No Account ? then ",
                        style: TextStyle(color: Colors.white54),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap:widget.onTap,

                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white70),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
