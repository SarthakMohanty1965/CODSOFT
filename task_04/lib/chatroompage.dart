
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatRoomPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyChatRoomPage();
}
class _MyChatRoomPage extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.0,
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
            child: Text(' Chat app ', style: a1(Colors.black, 18.0))),),
      backgroundColor: Colors.black,
      body: Center(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [

          ],
        )
      ),
    );
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