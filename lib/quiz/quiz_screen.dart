import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/components/body.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Flutter shows the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: _questionController.nextQuestion,
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Body(),
    );
  }
}
