
import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  final controller;
  VoidCallback onCancel;
  VoidCallback onSave;
  AddNewTask ({super.key,required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red.shade200,
      title: const Text('New Task',style: TextStyle(fontSize: 20,color: Colors.white70),),
      shadowColor: Colors.black,
      elevation: 22,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration:const InputDecoration(
                icon:Icon( Icons.task_outlined,color: Colors.white70,),
                hintText:"Add new Task"
              ),
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: onSave,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade200,
                      ),
                    child: const Text('Save')),

                ElevatedButton(onPressed:onCancel,style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade200,
                ),
                    child: const Text('Close')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
