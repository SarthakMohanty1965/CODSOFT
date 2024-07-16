import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:task_04/service/authorisation/service_authorisation_page.dart';
import 'package:task_04/textfieldpage.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key,required this.onTap});
  @override
  State<RegisterPage> createState() => _MyRegisterPage();
}

class _MyRegisterPage extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confirmController = TextEditingController();

  Future<void> SignUp() async {
    if(passController.text!=confirmController.text){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("PassWord does not match,Check again!",style: TextStyle(color: Colors.white),)));
      return;
    }
    final serviceAuth = Provider.of<AuthService_Page>(context,listen: false);
    try{
      await serviceAuth.signUpWtihEmailandPassword(emailController.text, passController.text);
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
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
                Text('Create your Account Now!!\n         Time to Dig in ...',style: GoogleFonts.roboto(textStyle:TextStyle(color: Colors.white,wordSpacing:3,fontWeight: FontWeight.w100)),),
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
                TextFieldPage(
                    icon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.white54,
                    ),
                    controller: confirmController,
                    hintText: "Confirm Password",
                    obscureText: false),
                const SizedBox(
                  height: 18,
                ),
                OutlinedButton(
                    onPressed: SignUp,
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.white),
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: const Text(
                      "     SignUp      ",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account? then ",
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Login Now',
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
    );
  }
}
