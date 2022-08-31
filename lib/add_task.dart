import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
class AddTask extends StatelessWidget {
  final Function addTaskcallback;
  /*Callback is basically a function or a method that we pass as an argument into another function or a method to perform an action.
   In the simplest words, we can say that Callback or VoidCallback are used while sending data from one method 
   to another and vice-versa
   */
 AddTask(this.addTaskcallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
   return Container(
    padding: EdgeInsets.all(30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Text('add task',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        color: Colors.indigo[400],
        fontWeight: FontWeight.bold,
      ),),
      TextField(
        autofocus: true,
        textAlign: TextAlign.center,
        onChanged: (newtext){
          newTaskTitle = newtext;
        },
      ),
      SizedBox(height: 30,),
      TextButton(
        onPressed: (){
          Provider.of<TaskData>(context,listen:false).addTask(newTaskTitle!);
          Navigator.pop(context);
        }, 
        child: Text('ADD'),
        style: TextButton.styleFrom(
          backgroundColor: Colors.teal[400],
          primary: Colors.white,
        ),
        ),
    ]),
   ); 
  }
}