enum QuestionType { START, POTENTIAL_END, END, NULL }
enum ChoiceType { CHOICE_ONE, CHOICE_TWO }
enum ListType { LIST_ONE, LIST_TWO }

class Choice {
  final String question;
  final String choiceOne;
  final String choiceTwo;
  final QuestionType questionType;

  Choice({
    this.question,
    this.choiceOne,
    this.choiceTwo,
    this.questionType,
  });
}
