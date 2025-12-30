import 'package:flutter/material.dart';
import 'package:taskati/model/task_model.dart';


class Task extends StatelessWidget {
  final TaskModel task;
  const Task({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        child:
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: task.color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(task.taskTitle, style: TextStyle(color: Colors.white, fontSize: 26),),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.alarm, color: Colors.white),
                        SizedBox(width: 6),
                        Text('${task.date} - ${task.startTime}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                    SizedBox(height: 6),
                    Text(task.description, style: TextStyle(color: Colors.white, fontSize: 18),),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 2,
                margin: const EdgeInsets.symmetric(horizontal: 12),
                color: Colors.white,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Text( task.state,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}
