import 'package:sabak06/models/choice.dart';

class Brain {
  int index = 0;

  List<Choice> listOne = [
    Choice(
      question: 'Which OS do you prefer?',
      choiceOne: 'Android Android',
      choiceTwo: 'iOS iOS',
      questionType: QuestionType.START,
    ),
    Choice(
      question: 'Do you want to take high quality photos?',
      choiceOne: 'Yes',
      choiceTwo: 'No',
      questionType: QuestionType.POTENTIAL_END,
    ),
    Choice(
      question: 'We suggest you the following',
      choiceOne: 'Samsung s20 Ultra',
      choiceTwo: 'Xiaomi Redmi 8',
      questionType: QuestionType.END,
    ),
    Choice(
      question: 'Do you need a good battery life?',
      choiceOne: 'Yes',
      choiceTwo: 'No',
      questionType: QuestionType.NULL,
    ),
    Choice(
      question: 'What\'s your budget?',
      choiceOne: 'Price doesn\'t matter',
      choiceTwo: 'My budget is less than \$500 dollars',
      questionType: QuestionType.POTENTIAL_END,
    ),
    Choice(
      question: 'We suggest you the following',
      choiceOne: 'Samsung s20 Ultra',
      choiceTwo: 'Xiaomi Redmi 8',
      questionType: QuestionType.END,
    ),
  ];

  List<Choice> listTwo = [
    Choice(
      question: 'Which OS do you prefer?',
      choiceOne: 'Android',
      choiceTwo: 'iOS',
      questionType: QuestionType.START,
    ),
    Choice(
      question: 'Do you want to take high quality photos?',
      choiceOne: 'Yes',
      choiceTwo: 'No',
      questionType: QuestionType.NULL,
    ),
    Choice(
      question: 'We suggest you the following',
      choiceOne: 'iPhone 12 Max Pro',
      choiceTwo: 'iPhone 12 Mini',
      questionType: QuestionType.END,
    ),
    Choice(
      question: 'Do you need a good battery life?',
      choiceOne: 'Yes',
      choiceTwo: 'No',
      questionType: QuestionType.NULL,
    ),
    Choice(
      question: 'What\'s your budget?',
      choiceOne: 'Price doesn\'t matter',
      choiceTwo: 'My budget is less than \$500 dollars',
      questionType: QuestionType.NULL,
    ),
    Choice(
      question: 'We suggest you the following',
      choiceOne: 'iPhone 12 Max Pro',
      choiceTwo: 'iPhone 12 Mini',
      questionType: QuestionType.END,
    ),
  ];

  Choice getQuestion(ListType listType) {
    if (listType == ListType.LIST_ONE) {
      return listOne[index];
    }
    if (listType == ListType.LIST_TWO) {
      return listTwo[index];
    }

    return null;
  }

  String getNextQuestion() {}

  void userChoice(ChoiceType choiceType) {
    if (choiceType == ChoiceType.CHOICE_ONE && index == 0) {
      //TODO
    }
    if (choiceType == ChoiceType.CHOICE_ONE && index == 1) {
      //TODO
    }
    if (choiceType == ChoiceType.CHOICE_ONE && index == 2) {
      //TODO
    }
    if (choiceType == ChoiceType.CHOICE_ONE && index == 3) {
      //TODO
    }
    if (choiceType == ChoiceType.CHOICE_ONE && index == 4) {
      //TODO
    }
    if (choiceType == ChoiceType.CHOICE_TWO) {
      //TODO
    }
  }
}

final Brain brain = Brain();
