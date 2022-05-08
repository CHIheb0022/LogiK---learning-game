  import 'package:flutter/material.dart';
import 'package:flutter_application_1/logic/screens/quiz/quiz_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/logic/constants.dart';
import 'package:flutter_application_1/logic/screens/quiz/quiz_screen.dart';

class WelcomeScreenl extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
          child: Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
            image: AssetImage("icons/bg1.gif"),
            fit: BoxFit.cover),
            ),),
            ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2), //2/6
                  Text(
                    "Are you good at Formal Logic?,",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Spacer(), // 1/6
                  
                  InkWell(
                    onTap: () => Get.to(QuizScreenl()),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Let's Start ",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(flex: 2), // it will take 2/6 spaces
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
