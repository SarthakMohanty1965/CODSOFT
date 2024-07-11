import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
font(size,color,fontW) {
    return GoogleFonts.ubuntu(textStyle:TextStyle(fontSize: size,color: color,fontWeight: fontW));
  }

class ListTilepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyListTilePage();
}

class _MyListTilePage extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          horizontalTitleGap: 28,
          contentPadding: EdgeInsets.all(4.0),
          title: Text("UserName",style: font(16.0,Colors.white70,FontWeight.w700),),
          subtitle: Text('user\'s text messages all appear here.',style: font(14.0,Colors.white54,FontWeight.w400),),
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Image.asset('lib/assets/image/drawer_image.jpg'),

          ),
        ),

    );
  }
}
