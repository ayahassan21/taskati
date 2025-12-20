import 'dart:io';
import 'package:flutter/material.dart';
import 'package:taskati/screens/home_screen.dart';
import 'package:taskati/widget/button.dart';
import 'package:image_picker/image_picker.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ImagePicker picker = ImagePicker();
   XFile? photo;
  void camera() async {
  photo = await picker.pickImage(source: ImageSource.camera);
  setState(() {

  });
  }
  void gallery() async {
    photo = await picker.pickImage(source: ImageSource.gallery);
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  photo ==null ? CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person,size: 200,color: Colors.purple,),
                  ):CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.black,backgroundImage: Image.file(File(photo?.path??"")).image,
                  ),
                  SizedBox(height: 20),
                  Button(title: 'Upload from Camera',onPressed: (){camera();}),
                  SizedBox(height: 20),
                  Button(title: "Upload from Gallery",onPressed:(){gallery();}),
                  SizedBox(height: 20),
                  Divider(thickness: 5),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(15),),
                      hintText:"enter your name",
                    ),
                  ),
                  SizedBox(height: 30),
                  Button(title: 'login',onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (c)=>HomeScreen()), (c)=>false);
                  }),
                ],

              ),
          ),
        ),
      ),

    );
  }
}
