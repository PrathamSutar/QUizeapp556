import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizapp/Play_quiz_Screen.dart';
import 'package:quizapp/const.dart';

class ResultScreen extends StatelessWidget {
  int correctAnswer, wronganswer;

  ResultScreen(
      {super.key, required this.correctAnswer, required this.wronganswer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: backgroundColor),
        backgroundColor: forgroundColor,
        title: Text(
          "Quiz Result",
          style: TextStyle(color: backgroundColor),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("correctAnswere", correctAnswer),
                answerTab("WrongAnswere", wronganswer)
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: forgroundColor),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Play_quiz_Screen(),
                      ),
                      (route) => false);
                },
                child: Text(
                  "Start Again",
                  style: TextStyle(color: backgroundColor),
                ))
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        Text(
          "$value",
          style: TextStyle(
              color: forgroundColor, fontSize: 60, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
