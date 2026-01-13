
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskati/model/task_model.dart';
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
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  TextEditingController startTimeController=TextEditingController();
  TextEditingController endTimeController=TextEditingController();
  int activeColor =-1;


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
            AddFormField(controller: titleController,   hint: "enter title"),
            SizedBox(height: 25,),
            Text("Description",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            AddFormField(controller: descriptionController,   hint: "enter description",lines:3),
            SizedBox(height: 25,),
            Text("Date",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            AddFormField(controller:dateController, hint: "12/6/2025",
              suffixIcon: Icon(Icons.calendar_month),
              readOnly: true,
              onTap: (){
              showDatePicker(context: context, firstDate: DateTime(2025), lastDate: DateTime(2027)
              ).then((value){
                dateController.text=DateFormat.yMEd().format(value??DateTime.now()).toString();
              });
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
                      AddFormField(controller: startTimeController,  hint: "4:00  pm",
                        suffixIcon: Icon(Icons.alarm)
                        ,readOnly: true,
                        onTap: (){
                        showTimePicker(context: context, initialTime: TimeOfDay.now())
                        .then((value){
                          startTimeController.text=value?.format(context)??"";
                        })
                        ;
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
                      AddFormField(controller: endTimeController,   hint: "9:00  pm",
                        suffixIcon: Icon(Icons.alarm),
                        readOnly: true,
                        onTap: (){
                          showTimePicker(context: context, initialTime: TimeOfDay.now())
                              .then((value){
                            endTimeController.text=value?.format(context)??"";
                        },
                      );
                      })
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: List.generate(5, (index)=>  InkWell(
                onTap: (){setState(() {
                  activeColor=index;
                }); },
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: colors[index],
                  child:activeColor==index? Icon(Icons.check,color: Colors.white,):null,
                ),
              ))
              
              ,),
            SizedBox(height: 30,),
            Button(title: 'Create Task',onPressed: (){
              if( formKey.currentState?.validate()??false){

                if(activeColor==-1){
                  showDialog(context: context, builder: (context)=>AlertDialog(
                    title: Text("Error"),
                    content: Text("select color"),
                  ));

                  return;
                }

                tasks.add(TaskModel(
                    taskTitle: titleController.text,
                    date: dateController.text,
                    startTime: startTimeController.text,
                    endTime: endTimeController.text,
                    description: descriptionController.text,
                    state: "TODO",
                    color: colors[activeColor]));
                Navigator.pop(context);


              }




            }),









          ],),
      ),
    )



    );
  }
}
