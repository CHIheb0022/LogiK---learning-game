// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/controllers/question_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/logic/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreenl extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    QuestionControllerl _controller = Get.put(QuestionControllerl());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(onPressed: _controller.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: const Body(),
    );
  }
}
