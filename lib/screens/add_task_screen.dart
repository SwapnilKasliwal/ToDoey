import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    String? newItem;
    return Container(
      color: Color(0xFF757575), // this is for the grey container.
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
        child: Column(
          children: [
            Text('Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true, // this gives the flexibility of keyboard appearing on it's own when we click.
              onChanged: (value){
                newItem = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              padding: EdgeInsets.all(10),
              minWidth: double.infinity,
              color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              onPressed: (){
                Provider.of<TaskData>(context, listen: false).addData(newItem);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
