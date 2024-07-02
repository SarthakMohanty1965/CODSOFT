import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToDoList extends StatelessWidget {
  late final String taskName;
  late final bool taskCompleted;
  Function(bool?)? onChanged;
  VoidCallback onDelete;
  VoidCallback onEdit;

  ToDoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.onDelete,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, left: 22, right: 22),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.red.shade200,
            border: Border.all(width: 0.6, color: Colors.black12),
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 3),
                spreadRadius: 1,
                color: Colors.black12,
              )
            ]),
        child: Row(
          children: [
            Checkbox(
                activeColor: Color.fromARGB(255, 215, 125, 125),
                value: taskCompleted,
                onChanged: onChanged),
            Expanded(
              child: Text(
                taskName,
                style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: taskCompleted?Colors.black54:Colors.white,
                    letterSpacing:taskCompleted?0.8:1.8),
              ),
            ),
            Tooltip(
              message: "Edit Task",
                child: IconButton(onPressed: onEdit, icon: Icon(Icons.edit_outlined,color: Colors.white70,))),
            Tooltip(
              message: "Delete Task",
                child: IconButton(onPressed: onDelete, icon: Icon(Icons.delete_outline_rounded,color: Colors.white70,)))
          ],
        ),
      ),
    );
  }
}