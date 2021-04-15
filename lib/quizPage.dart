import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:learning_app10/controllers/question_controller.dart';
import 'package:learning_app10/constants.dart';
import 'package:learning_app10/model/questions.dart';
import 'package:learning_app10/widget/alloptions.dart';
import 'package:learning_app10/widget/progress.dart';
import 'package:learning_app10/widget/question_card.dart';

class QuizPage extends StatelessWidget {
  List<Question> _questions = [];
  // So that we have acccess our controller
  QuestionController _questionController = Get.put(QuestionController());

  QuestionController _optionsController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('worldgk')
          .orderBy('id')
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
            // navigatorKey: Get.key,
          );
        } else {
          if (!snapshot.hasData) {
            return Scaffold(
              body: Center(
                child: Text("No Data Found"),
              ),
            );
          }
          final _list = snapshot.data.docs;
          print(_list[0].data());
          if (_list.length != 0) {
            for (int i = 0; i < _list.length; i++) {
              Question questions = Question(
                id: _list[i].data()["id"],
                answer: _list[i].data()["answer_index"],
                options: _list[i].data()["options"],
                question: _list[i].data()["question"],
              );
              _questions.add(questions);
            }
            _questionController.setQuestions(_questions);
          }
        }
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: null,
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: null,
              )
            ],
          ),
          body: Stack(
            children: <Widget>[
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  height: mqh * 0.30,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: ProgressBar(),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Card(
                      elevation: 3,
                      margin: EdgeInsets.only(top: mqh * 0.10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: mqw * 0.8,
                        height: mqh * 0.22,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Obx(
                                  () => Text(
                                    "${_questionController.numOfCorrectAns.value}",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Obx(
                                  () => Text(
                                    "${_questionController.numOfWrongAns.value}",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Obx(
                              () => Text.rich(
                                TextSpan(
                                  text:
                                      "Question ${_questionController.questionNumber.value}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Theme.of(context).primaryColor),
                                  children: [
                                    TextSpan(
                                      text:
                                          "/${_questionController.questions.length}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: PageView.builder(
                                // Block swipe to next qn
                                physics: NeverScrollableScrollPhysics(),
                                controller: _questionController.pageController,
                                onPageChanged:
                                    _questionController.updateTheQnNum,
                                itemCount: _questionController.questions == null
                                    ? 0
                                    : _questionController.questions.length,
                                itemBuilder: (context, index) => QuestionCard(
                                    question:
                                        _questionController.questions[index]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      // Block swipe to next options
                      physics: NeverScrollableScrollPhysics(),
                      controller: _optionsController.optionspageController,
                      onPageChanged: _optionsController.updateTheQnNum,
                      itemCount: _optionsController.questions == null
                          ? 0
                          : _optionsController.questions.length,
                      itemBuilder: (context, index) => AllOptionsCard(
                          question: _optionsController.questions[index]),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
