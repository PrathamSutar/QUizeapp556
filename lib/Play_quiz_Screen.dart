import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Quiz_question_model.dart';
import 'package:quizapp/ResultScreen.dart';
import 'package:quizapp/const.dart';

class Play_quiz_Screen extends StatefulWidget {
  const Play_quiz_Screen({super.key});

  @override
  State<Play_quiz_Screen> createState() => _Play_quiz_ScreenState();
}

class _Play_quiz_ScreenState extends State<Play_quiz_Screen> {


  final PageController pageController = PageController();

  bool isAnswerlocked = false;
  int currentindex = 0,correctanswers = 0, wronganswer=0;
  String correctanswer= "", selectanswer ="";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: backgroundColor),
        backgroundColor: forgroundColor,
        title: Text("Play quiz",style: TextStyle(color: backgroundColor),),
        centerTitle: true,
      ),

      body: PageView.builder(
        controller: pageController,

        physics: NeverScrollableScrollPhysics(),
        itemCount:Quizquestions.length ,
        
        itemBuilder: (context, index) {

          Quizquestionmodel model =Quizquestions[index];
        return  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
                height: 20,
              ),
            Align(alignment: Alignment.centerLeft,
              
              
              child: Text(model.question,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),)),

              SizedBox(
                height: 20,
              ),

              Column(
                children:List.generate(4, (index) =>   Padding(
                  padding: EdgeInsets.symmetric(vertical: 8
                  ),
                  child: InkWell(onTap: () {
                    setState(() {
                      isAnswerlocked= true;
                    selectanswer=model.Options[index];
                    correctanswer= model.correctanswer;
                    });
                    
                  },
                    child: Container(
                                height: 50,
                                width:double.infinity ,
                                decoration: BoxDecoration(
                    border: Border.all(color: forgroundColor),borderRadius: BorderRadius.circular(10),
                    color: selectanswer == model.Options[index]?forgroundColor:backgroundColor
                    
                                ),
                                
                                alignment: Alignment.centerLeft,
                                child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Text(model.Options[index],style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                                ),
                                  
                              ),
                  ),
                ),)
              )

          
          ],
        ),
      );
      },),


      bottomNavigationBar: InkWell(
        onTap: () {

          if(isAnswerlocked){

            if(selectanswer==correctanswer){

              correctanswers++;
            }else{
              wronganswer++;
            }

            currentindex++;

            if(currentindex !=Quizquestions.length){
              pageController.jumpToPage(currentindex);
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(correctAnswer: correctanswers,wronganswer: wronganswer,),));

            }

            print("correctAnswer : $correctanswer");
            print("WrongAnswere: $wronganswer");

          }else{

            print("Please select an option");
          }
          
        },
        child: Container(
          color: forgroundColor,
          alignment: Alignment.center,
          height: 70,
          child: Text("Next",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: backgroundColor),),
        ),
      ),
    );
  }
}