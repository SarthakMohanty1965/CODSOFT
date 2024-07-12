import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/list_tile.dart';
import 'package:task_04/login_or_register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:  LoginOrRegistPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          actions:  [
            IconButton(onPressed: (){ }, icon: const Icon(Icons.more_vert_rounded,color: Colors.teal,))
          ],
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.teal.shade400),
          title: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 5, color: Colors.black12),
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 6,
                        spreadRadius: 1,
                        offset: Offset(2,3),
                        color: Colors.tealAccent)
                  ]),
              child: Text(' Chat app ', style: a1(Colors.black, 18.0))),
        ),
        drawer: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
          child: Drawer(
            elevation: 0,
            backgroundColor: Colors.black.withOpacity(0.6),
            child: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('lib/assets/image/drawer_image.jpg',
                          fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.only(top: 78.0, left: 12),
                        child: SizedBox(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                            child: Text(
                              'Welcome Back,\nUser',
                              style: a(Colors.white, 24.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 12,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: const SizedBox(width: 24,),
                        tileColor: Colors.transparent,
                        trailing: const Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          ' Settings ',
                          style: a(Colors.white, 18.0),
                        ),
                      ),
                      ListTile(
                        leading: const SizedBox(width: 24,),
                          tileColor: Colors.transparent,
                          trailing: const Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                          title: Text(
                            ' About me ',
                            style: a(Colors.white, 18.0),
                          ))
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 32.0,right: 18),
          child: FloatingActionButton(onPressed:(){} ,
            backgroundColor: Colors.black,
            tooltip:'New Chat',
            shape: const CircleBorder(side: BorderSide(color: Colors.teal)),
            splashColor: Colors.teal.shade100,child: const Icon(Icons.add,color: Colors.white,),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView(

                children: [
              ListTilepage(),
              ListTilepage(),

            ]),
          ),
        ),
      ),
    );
  }

  a(color, txtSize) {
    return GoogleFonts.ubuntu(
        textStyle: TextStyle(
      fontSize: txtSize,
      fontWeight: FontWeight.w500,
      color: color,
    ));
  }
  a1(color, txtSize) {
    return GoogleFonts.cedarvilleCursive(
        textStyle: TextStyle(
          fontSize: txtSize,
          fontWeight: FontWeight.w500,
          color: color,
        ));
  }
}
