

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
];