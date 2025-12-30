

import 'dart:ui';

import 'package:flutter/material.dart';

class TaskModel {
  String taskTitle;
  String date;
  String startTime;
  String endTime;
  String description;
  String state;
  Color  color;


  TaskModel( {required this.taskTitle,required this.date,required this.startTime,required this.endTime,required this.description,required this.state,required this.color});
}
List<TaskModel>tasks=[
  TaskModel(taskTitle: " Flutter task 1", date: "1/4/2025", startTime: "3:00", endTime: "9:00", description: "I will do this task", state: "T O  D  O", color: Colors.deepPurpleAccent),
  TaskModel(taskTitle: " Flutter task 2", date: "15/4/2025", startTime: "3:00", endTime: "9:00", description: "I will do this task", state: "T O  D  O", color: Colors.greenAccent),
  TaskModel(taskTitle: " Flutter task 3", date: "1/5/2025", startTime: "3:00", endTime: "9:00", description: "I will do this task", state: "T O  D  O", color: Colors.amber),
  TaskModel(taskTitle: " Flutter task 4", date: "15/5/2025", startTime: "3:00", endTime: "9:00", description: "I will do this task", state: "T O  D  O", color: Colors.lightGreen),

];