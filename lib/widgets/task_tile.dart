import 'package:flutter/material.dart';
// Here, we are intentionally keeping the task tile simple. We are still keeping the Function we received
// from task list.
class TaskTile extends StatelessWidget {

  TaskTile({this.taskTitle, this.isChecked, this.checkCallBack, this.deleteFunc});

  final String? taskTitle;
  final bool? isChecked;
  final Function(bool?)? checkCallBack;
  final Function()? deleteFunc;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteFunc,
      title: Text(taskTitle!,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          decoration: isChecked!? TextDecoration.lineThrough: null,
        ),
      ),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value:isChecked!,
        onChanged: checkCallBack,

      ),
    );
  }
}


