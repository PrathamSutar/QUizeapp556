import 'package:flutter/material.dart';

import 'Quiz_question_model.dart';

const backgroundColor = Color.fromRGBO(45, 27, 3, 1);
const forgroundColor = Color.fromRGBO(244, 140, 6, 1);

List<Quizquestionmodel> Quizquestions = [
  Quizquestionmodel(question: "Who created Flutter?", correctanswer: "Google", Options:[
    "Google",
    "facebook",
    "Apple",
    "Microsoft"
  ] ),

   Quizquestionmodel(question: "Which programing language is used by Flutter?", correctanswer: "Dart", Options:[
    "Java",
    "C++",
    "Kotlin",
    "Dart"
  ] ),

   Quizquestionmodel(question: "Which is the following advantage of flutter?", correctanswer: "All of above", Options:[
    "Cross-platform",
    "Faster devlopment",
    "Minimal code",
    "All of above"
  ] ),

   Quizquestionmodel(question: "The first alpha version of Flutter was released in?", correctanswer: "2017", Options:[
    "2016",
    "2017",
    "2018",
    "2019"
  ] ),

   Quizquestionmodel(question: " It is very necessary to learn Dart language for building Flutter application?", correctanswer: "Yes", Options:[
    "Yes",
    "No",
    "Can be yes or no",
    "Can not say"
  ] ),

   Quizquestionmodel(question: "Which widget allows to refresh screen ?", correctanswer: "Stateful widget", Options:[
    "Stateless widget",
    "Stateful widget",
    "Statebuild widget",
    "All of above"
  ] ),

   Quizquestionmodel(question: "The examples of the Stateless widget are?", correctanswer: "All of above", Options:[
    "Text",
    "Row",
    "Column",
    "All of above"
  ] ),

   Quizquestionmodel(question: "Which of the following takes more time to compile and update the app?", correctanswer: "Hot restart", Options:[
    "Hot relode",
    "Hot restart",
    "Cold relode",
    "Depends on compiler"
  ] ),

   Quizquestionmodel(question: "Which function is responsible for starting the program?", correctanswer: "Main()", Options:[
    "RunApp()",
    "Run()",
    "Flutter()",
    "Main()"
  ] ),

   Quizquestionmodel(question: "Which package use for HTTP calls?", correctanswer: "Http ", Options:[
    "SQlite",
    "Firebase",
    "Provider",
    "Http"
  ] ),

    
];
