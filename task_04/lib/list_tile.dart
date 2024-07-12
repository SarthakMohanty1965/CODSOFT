
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_04/chatroompage.dart';
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
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatRoomPage()));
          },
          horizontalTitleGap: 28,
          contentPadding: const EdgeInsets.all(4.0),
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
