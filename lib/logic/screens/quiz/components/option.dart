import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/controllers/question_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter_application_1/logic/controllers/question_controller.dart';

import '../../../constants.dart';

class Optionl extends StatelessWidget {
  const Optionl({
    required this.text,
    required this.index,
    required this.press,
  });
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionControllerl>(
        init: QuestionControllerl(),
        builder: (qnControllerl) {
          Color getTheRightColor() {
            if (qnControllerl.isAnswered) {
              if (index == qnControllerl.correctAns) {
                return kGreenColor;
              } else if (index == qnControllerl.selectedAns &&
                  qnControllerl.selectedAns != qnControllerl.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}. $text",
                    style: TextStyle(color: getTheRightColor(), fontSize: 16),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == kGrayColor
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == kGrayColor
                        ? null
                        : Icon(getTheRightIcon(), size: 16),
                  )
                ],
              ),
            ),
          );
        });
  }
}
