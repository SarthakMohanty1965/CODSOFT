import 'package:flutter/cupertino.dart';
import 'package:task_04/loginpage.dart';
import 'package:task_04/registerpage.dart';

class LoginOrRegistPage extends StatefulWidget {
  const LoginOrRegistPage({super.key,});
  @override
  State<LoginOrRegistPage>createState() => _MyLoginOrRegisterPage();
}

class _MyLoginOrRegisterPage extends State<LoginOrRegistPage> {
  bool showLoginPage = true;

  void changePages(){
    setState(() {
      showLoginPage  =!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if(showLoginPage){
     return LoginPage(onTap: changePages);
   }
   else{
     return RegisterPage(onTap: changePages);
   }
  }

}