import 'package:flutter/material.dart';

class listTile extends StatelessWidget {
   final bool isChecked;
    final String tasktitle;
    final void Function (bool?) checkboxchange;
    final void Function () listtiledelete;
  listTile({required this.isChecked,
            required this.tasktitle,
            required this.checkboxchange,
            required this.listtiledelete});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tasktitle,
      style:TextStyle(decoration: isChecked ? TextDecoration.lineThrough :null)),
      trailing: Checkbox(
      activeColor: Colors.teal[400],
      value: isChecked,
     onChanged: checkboxchange,  
     ),
      onLongPress: listtiledelete,
      );
  }
}


