import 'package:flutter/material.dart';
import 'package:sabak06/constants/app_colors.dart';
import 'package:sabak06/constants/app_text_styles.dart';
import 'package:sabak06/models/choice.dart';
import 'package:sabak06/widgets/button_content.dart';

import 'package:sabak06/widgets/raised_gradient_button.dart';
import 'package:sabak06/models/brain.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Choice choice;
  String question;
  String choiceOne;
  String choiceTwo;

  @override
  void initState() {
    super.initState();
    _initQuestion();
  }

  void _initQuestion() {
    final _choice = brain.getQuestion(ListType.LIST_ONE);

    setState(() {
      question = _choice.question;
      choiceOne = _choice.choiceOne;
      choiceTwo = _choice.choiceTwo;
    });
  }

  void _userHasChosen() {
    brain.userChoice(ChoiceType.CHOICE_ONE);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppColors.bgColorLightPurple,
            AppColors.bgColorLightRed,
            AppColors.bgColorLightGrey,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Эмне каалайсын?',
            style: TextStyle(color: AppColors.secondaryColor.withOpacity(0.8)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                question,
                style: AppTextStyles.mainQuestion,
              ),
              RaisedGradientButton(
                topMargin: 8.0,
                height: 55.0,
                width: 350.0,
                child: ButtonContent(
                  iconText: 'A',
                  buttonText: choiceOne,
                ),
                onPressed: () {
                  brain.userChoice(ChoiceType.CHOICE_ONE);
                },
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
              RaisedGradientButton(
                topMargin: 8.0,
                height: 55,
                width: 350,
                child: ButtonContent(
                  iconText: 'B',
                  buttonText: choiceTwo,
                ),
                onPressed: () {
                  brain.userChoice(ChoiceType.CHOICE_TWO);
                },
                gradient: LinearGradient(
                  colors: <Color>[
                    AppColors.mainColor,
                    AppColors.secondaryColor,
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: Row(
        //   children: <Widget>[
        //     ...bottomNavIcons,
        //   ],
        //   // children: bottomNavIcons,
        // ),
      ),
    );
  }
}
