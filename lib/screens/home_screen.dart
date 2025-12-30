import 'package:flutter/material.dart';
import 'package:taskati/model/task_model.dart';
import 'package:taskati/screens/add_task_screen.dart';
import 'package:taskati/widget/calender.dart';
import 'package:taskati/widget/task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello , Aya Mohamed",style: TextStyle(color: Colors.deepPurple,fontSize: 30,fontWeight: FontWeight.w600),
                        maxLines: 1,overflow: TextOverflow.ellipsis,
                        ),
                        Text("Have a Nice Day",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                 SizedBox(width: 20),
                  CircleAvatar(
                    backgroundImage:Image.asset("assets/image/img.jpg").image,
                    radius: 40,
                  ),
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("November 25,2025 ",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                              maxLines: 1,overflow: TextOverflow.ellipsis,
                            ),
                            Text("Today",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTaskScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child:Text(" + Add Task ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                      ),
                    ],
                      ),
                    ],
                  ),
              SizedBox(height: 30),
              Row(
                children: [
                  Calender(title: 'oct', date: '23', day: 'str', isActive: false, color: Colors.white,  ),
                  SizedBox(width: 5,),
                  Calender(title: 'oct', date: '24', day: 'sun',  isActive: true, color: Colors.white,),
                  SizedBox(width: 5,),
                  Calender(title: 'oct', date: '25', day: 'mon', isActive: false, color: Colors.white,),

                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.separated(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) =>Task(task: tasks[index],),
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 8);
                      },
                    ),
              )


            ],
              ),

          ),
        ),


    );
  }
}
