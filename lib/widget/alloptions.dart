import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app10/constants.dart';
import 'package:learning_app10/controllers/question_controller.dart';
import 'package:learning_app10/model/questions.dart';
import 'package:learning_app10/widget/options.dart';



class AllOptionsCard extends StatelessWidget {
  const AllOptionsCard({
    Key key,
    // it means we have to pass this
    @required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
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