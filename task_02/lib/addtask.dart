
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/todo_list.dart';

class AddNewTask extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  AddNewTask ({super.key,required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red.shade200,
      title: Text('New Task',style: TextStyle(fontSize: 20,color: Colors.white70),),
      shadowColor: Colors.black,
      elevation: 22,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration:InputDecoration(
                icon:Icon( Icons.task_outlined,color: Colors.white70,),
                hintText:"Add new Task"
              ),
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: onSave,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade200,
                      ),
                    child: Text('Save')),

                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop;
                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade200,
                ),
                    child: Text('Close')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
