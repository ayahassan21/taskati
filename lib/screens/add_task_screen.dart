
import 'package:flutter/material.dart';
import 'package:taskati/widget/add_form_field.dart';
import 'package:taskati/widget/button.dart';




class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  var formKey=GlobalKey<FormState>();
  List<Color>colors=[
    Colors.deepPurple,
    Colors.cyan,
    Colors.teal,
    Colors.orange,
    Colors.lightBlue,


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.deepPurple,
          size: 50,
        ),
        centerTitle: true,
        title: Text("Add Task",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            AddFormField(hint: "enter title"),
            SizedBox(height: 25,),
            Text("Description",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            AddFormField(hint: "enter description",lines:3),
            SizedBox(height: 25,),
            Text("Date",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            AddFormField(hint: "12/6/2025",
              suffixIcon: Icon(Icons.calendar_month),
              readOnly: true,
              onTap: (){
              showDatePicker(context: context, firstDate: DateTime(2025), lastDate: DateTime(2027));
              },

            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Start Time",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      AddFormField(hint: "4:00  pm",
                        suffixIcon: Icon(Icons.alarm)
                        ,readOnly: true,
                        onTap: (){
                        showTimePicker(context: context, initialTime: TimeOfDay.now());
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("End Time",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      AddFormField(hint: "9:00  pm",
                        suffixIcon: Icon(Icons.alarm),
                        readOnly: true,
                        onTap: (){
                          showTimePicker(context: context, initialTime: TimeOfDay.now());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: List.generate(5, (index)=>  CircleAvatar(
                radius: 25,
                backgroundColor: colors[index],
              ))
              ,),
            SizedBox(height: 30,),
            Button(title: 'Create Task',onPressed: (){
              if(formKey.currentState!.validate());})




          ],),
      ),
    )



    );
  }
}
