import 'package:flutter/material.dart';
import 'package:todolist/addtask.dart';
import 'package:todolist/todo_list.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDoList App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
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

  final _controller = TextEditingController();
  List toDoList = [
    ['Testing1', false],
    ['Testing2', true],
    ['Testing3',false],
  ];

  void createNewTask(){

    showDialog(context: context, builder: (context){
      return AddNewTask(
        controller: _controller,
        onSave: Saved,
        onCancel: (){
          Navigator.of(context).pop();
          _controller.clear();
        },

      );
    });
  }
  void Saved(){
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          'ToDoList',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 12,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        shadowColor: Colors.black,
      ),

      body: Center(
        child: Column(

          children: [
            Expanded(
              child: ListView.builder(
                itemCount: toDoList.length,
                itemBuilder: (context, index) {
                  return ToDoList(
                      taskName: toDoList[index][0],
                      taskCompleted: toDoList[index][1],
                      onEdit: (){
                        _controller.text = toDoList[index][0];
                        setState(() {
                         createNewTask();
                          toDoList[index][0]= _controller.text ;
                         toDoList.remove(toDoList[index]);
                        });
                      },
                      onDelete: (){
                        setState(() {
                          toDoList.remove(toDoList[index]);
                        });
                      },
                      onChanged: (v) {
                        setState(() {
                          toDoList[index][1] = !toDoList[index][1];
                        });
                      });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(height: 72.5,),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 70,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 238, 149, 151),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22), topRight: Radius.circular(22)),
            boxShadow: [
              BoxShadow(color: Colors.black38, blurRadius: 18, spreadRadius: 3)
            ]),
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          title: Text(
                            'TodoList App',
                            style: TextStyle(color: Colors.white70,),
                          ),
                          backgroundColor: Colors.black38,
                          content:Text(' About Me',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                          contentPadding: EdgeInsets.only(left: 24,top:2,bottom: 8),
                          actions: [

                            Text(
                              'I am Sarthak Mohanty, i am currently working on this project TODOList '
                                  'where you can add task, edit or delete it, also i am planning to integrate feature like history '
                                  'so that the user can cross verify their own past tasks easily.',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),

                      );
                    },
                    child: const Tooltip(
                      message: 'About Me',
                      child: Text(
                        'TODOLIST APP',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        elevation: 12,
        shape: const CircleBorder(),
        tooltip: 'Add Task',

        backgroundColor: Colors.red.shade200,
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white70,
        ),
      ),
      backgroundColor: const Color.fromARGB(225, 224, 125, 125),
    );
  }


}
