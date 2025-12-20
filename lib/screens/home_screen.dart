import 'package:flutter/material.dart';

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
                        onPressed: () {},
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
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     children: [
                       Container(
                         width: 100,
                         padding: EdgeInsets.symmetric(vertical: 10,),
                         decoration: BoxDecoration(
                           color: Colors.deepPurple,
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Column(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Text('OCT', style: TextStyle(color: Colors.white, fontSize: 20,),),
                             SizedBox(height: 6),
                             Text('30', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),),
                             SizedBox(height: 6),
                             Text('MON', style: TextStyle(color: Colors.white, fontSize: 20,),),
                           ],
                         ),
                       ),
                     ],
                   ),
                   Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text('OCT', style: TextStyle(color: Colors.black, fontSize: 20,),),
                       SizedBox(height: 6),
                       Text('31', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),),
                       SizedBox(height: 6),
                       Text('Teu', style: TextStyle(color: Colors.black, fontSize: 20,),),
                     ],
                   ),
                   Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text('Nov', style: TextStyle(color: Colors.black, fontSize: 20,),),
                       SizedBox(height: 6),
                       Text('1', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),),
                       SizedBox(height: 6),
                       Text('Wen', style: TextStyle(color: Colors.black, fontSize: 20,),),
                     ],
                   ),
                   Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       Text('Nov', style: TextStyle(color: Colors.black, fontSize: 20,),),
                       SizedBox(height: 6),
                       Text('2', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),),
                       SizedBox(height: 6),
                       Text('Thu', style: TextStyle(color: Colors.black, fontSize: 20,),),
                     ],
                   ),

                 ],
               ),
              SizedBox(height: 30),
              /*Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context,index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 4),
                        padding:  EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Flutter task', style: TextStyle(color: Colors.white, fontSize: 26),),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(Icons.alarm, color: Colors.white),
                                SizedBox(width: 6),
                                Text('2.30 AM - 5.30 PM', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              'I will do this',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ), Container(
                      height: 80,
                      width: 2,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      color: Colors.white,
                      ),

                      RotatedBox(quarterTurns: 3, child: Text('T O D O',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
                      ),],
                      ),
                      );
                    }),
              )*/
      Container(
        margin: EdgeInsets.only(bottom: 4),
        padding:  EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Flutter task', style: TextStyle(color: Colors.white, fontSize: 26),),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.alarm, color: Colors.white),
                      SizedBox(width: 6),
                      Text('2.30 AM - 5.30 PM', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    'I will do this',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ), Container(
              height: 80,
              width: 2,
              margin: EdgeInsets.symmetric(horizontal: 12),
              color: Colors.white,
            ),

            RotatedBox(quarterTurns: 3, child: Text('T O D O',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
            ),],
        ),

      ),
              Container(
                margin: EdgeInsets.only(bottom: 4),
                padding:  EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Flutter task 2', style: TextStyle(color: Colors.white, fontSize: 26),),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(Icons.alarm, color: Colors.white),
                              SizedBox(width: 6),
                              Text('2.30 AM - 9.30 PM', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                            ],
                          ),
                          SizedBox(height: 6),
                          Text(
                            'I will do this',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ), Container(
                      height: 80,
                      width: 2,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      color: Colors.white,
                    ),

                    RotatedBox(quarterTurns: 3, child: Text('T O D O',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
                    ),],
                ),

              ),
              Container(
                margin: EdgeInsets.only(bottom: 4),
                padding:  EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Flutter task 3', style: TextStyle(color: Colors.white, fontSize: 26),),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(Icons.alarm, color: Colors.white),
                              SizedBox(width: 6),
                              Text('2.30 AM - 1.30 PM', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                            ],
                          ),
                          SizedBox(height: 6),
                          Text(
                            'I will do this',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),

                    ), Container(
                      height: 80,
                      width: 2,
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      color: Colors.white,
                    ),

                    RotatedBox(quarterTurns: 3, child: Text('T O D O',
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold,),),
                    ),
                  ],
                ),

              ),
            ],
              ),

          ),
        ),


    );
  }
}
