import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapp/Play_quiz_Screen.dart';
import 'package:quizapp/const.dart';

class Start_quiz_screen extends StatefulWidget {
  const Start_quiz_screen({super.key});

  @override
  State<Start_quiz_screen> createState() => _Start_quiz_screenState();
}

class _Start_quiz_screenState extends State<Start_quiz_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text("Start Quiz",style: TextStyle(color:backgroundColor ),),
        centerTitle: true,
        backgroundColor: forgroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Quiz App",style: TextStyle(color: forgroundColor,fontSize: 40,fontWeight: FontWeight.w500),),

            ElevatedButton(style: ElevatedButton.styleFrom(primary: forgroundColor),
              
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) => Play_quiz_Screen(),));
              
            }, child: Text("Start Quiz",style: TextStyle(color: backgroundColor),))
      
          ],
        ),
      ),
      

    );
  }
}