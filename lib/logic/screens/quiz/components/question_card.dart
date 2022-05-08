import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/logic/controllers/question_controller.dart';
import 'package:flutter_application_1/logic/models/Questions.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCardl extends StatelessWidget {
  const QuestionCardl({
  
    required this.question,
  }) ;

  final Questionl question;

  @override
  Widget build(BuildContext context) {
    QuestionControllerl _controller = Get.put(QuestionControllerl());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.questionl,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Optionl(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
