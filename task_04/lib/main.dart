import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/list_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
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
          actions: [],
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.teal.shade400),
          title: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 5, color: Colors.black12),
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: [
                    const BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: Offset(2, 4),
                        color: Colors.white)
                  ]),
              child: Text(
                ' Chat app ',
                style: a(Colors.black,18.0)
              )),
        ),
        drawer: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 6, sigmaX: 6),
          child: Drawer(
            elevation: 0,
            backgroundColor: Colors.black26,
            child: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.asset('lib/assets/image/drawer_image.jpg',
                            fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:78.0,left:12),
                        child: SizedBox(
                          child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1, sigmaY:1),
                        child: Text('Welcome Back,\nUser',style: a(Colors.white,24.0),),
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
                        tileColor: Colors.transparent,
                        trailing: Icon(Icons.settings_outlined,color: Colors.white,),
                        title: Text(
                            ' Settings ',
                            style: a(Colors.white,20.0),
                          ),
                      ),
                      ListTile(
                      tileColor: Colors.transparent,
                          trailing: Icon(Icons.settings_outlined,color: Colors.white,),

                          title: Text(
                              ' About Me ',
                              style: a(Colors.white,20.0),
                            )
                      )
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
            ListTilepage(),
          ]),
        ),
      ),
    );
  }

  a(Color,txtSize) {
    return GoogleFonts.ubuntu(
        textStyle: TextStyle(
      fontSize: txtSize,
      fontWeight: FontWeight.w500,
          color: Color,
    ));
  }
}
