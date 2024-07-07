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
          elevation: 0,
          actions: [

          ],
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.teal.shade300),
          title: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 5, color: Colors.black12),
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: Offset(2, 4),
                        color: Colors.white)
                  ]),
              child: Text(
                ' Chat app ',
                style: a(),
              )),
        ),
        drawer: Drawer(
          shadowColor: Colors.black,
          elevation: 0,
          backgroundColor: Colors.black45,
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset('lib/assets/image/drawer_image.jpg',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 18,
                        left: 18.0,
                        right: 18,
                      ),
                      child: Card(
                        child: Text(
                          ' Settings ',
                          style: a(),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        elevation: 12,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 18, left: 18.0, right: 18),
                      child: Card(
                        child: Text(
                          ' About Me ',
                          style: a(),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        elevation: 12,
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ListTilepage(),
              ListTilepage(),
              ListTilepage(),
              ListTilepage(),
              ListTilepage(),ListTilepage(),ListTilepage(),ListTilepage(),ListTilepage(),ListTilepage(),ListTilepage(),ListTilepage(),ListTilepage(),ListTilepage(),
            ]


          ),
        ),
      ),
    );
  }

  a() {
    return GoogleFonts.ubuntu(
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700));
  }
}
