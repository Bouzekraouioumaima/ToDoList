// ignore_for_file: prefer_const_constructors
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:todo/add_task.dart';
import 'package:todo/models/task.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widget/task_list.dart';

class Todo extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showModalBottomSheet(
            //It will make bottomSheet to full height.
            isScrollControlled: true,
            context: context, 
            builder: (context) => SingleChildScrollView(child:
             Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).
                viewInsets.bottom
                ),
              child: AddTask((newtasktitle){
               /* setState(() {
                  tasks.add(Task(name: newtasktitle));
                  Navigator.pop(context);
                });*/
               
              })
              )
              ),
            );
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
         ),


      backgroundColor:Colors.teal[400],
      body:Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.playlist_add_check,
                size: 40,
                color: Colors.white,),
                SizedBox(width:20,),
                Text(
                  "ToDayDo",
                  style: TextStyle(
                 color: Colors.white,
                 fontSize: 40,
                 fontWeight: FontWeight.bold,
                 ),
                ),
              ],
            ),
            
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
            style: TextStyle(
              color:Colors.white,
              fontSize: 18,
            ),
            ),
            SizedBox(height: 20,),
            Expanded(
              //Creates a widget that expands a child of a [Row], [Column], or [Flex] so that the child fills the available 
              //space along the flex widget's main axis.
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: tasklist(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


