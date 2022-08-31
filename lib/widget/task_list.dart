// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:todo/widget/ListTile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
class tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*Le widget Consumer ne fait aucun travail sophistiqué. Il appelle simplement Provider.of
     dans un nouveau widget et délègue son implémentation de construction au constructeur." */
    return  Consumer<TaskData>(
        builder:(context, taskData, child){
          return ListView.builder(
        itemCount: taskData.tasks.length,
        itemBuilder: (context, index){
          return listTile(
            isChecked: taskData.tasks[index].isDone, 
            tasktitle: taskData.tasks[index].name,
            checkboxchange: ( newValue){
          taskData.updatTask(taskData.tasks[index]);
       },
       listtiledelete: (){
        taskData.deletetask(taskData.tasks[index]);
       },
          );
        },
    
        );
      },
    );
  }
}

