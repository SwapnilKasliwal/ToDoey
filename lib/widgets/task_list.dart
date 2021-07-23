import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          return TaskTile(taskTitle: taskData
              .tasks[index].name,
            isChecked: taskData
                .tasks[index].isDone,
            checkCallBack: (bool? checkBoxState) {
              taskData.updateTask(taskData.tasks[index],
              );
            },
            deleteFunc: (){
            taskData.deleteTask(taskData.tasks[index]);
            },
          );
        }, itemCount: taskData.taskCount,
        );
      }
    );
  }
}