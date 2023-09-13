import 'package:prakriti_finder/Quiz/question.dart';
class QuizBrain {
  List<Question> questionlist = [
    Question('Body Frame'),
    Question('Type of Hair'),
    Question('Color of Hair'),
    Question('Skin'),
    Question('Complexion'),
    Question('Body Weight'),
    Question('Nails'),
    Question('Size and Color of the Teeth'),
    Question('Pace of Performing Work'),
    Question('Mental Activity'),
    Question('Memory'),
    Question('Sleep Pattern'),
    Question('Weather Conditions'),
    Question('Reaction under Adverse Situations'),
    Question('Mood'),
    Question('Eating Habit'),
    Question('Hunger'),
    Question('Body Temperature'),
    Question('Joints'),
    Question('Nature'),
    Question('Body Energy'),
    Question('Quality of Voice'),
    Question('Dreams'),
    Question('Social Relations'),
    Question('Body Odor'),

  ];

  String getQuestionText(int quesNo) {
    if (quesNo < questionlist.length) {
      return questionlist[quesNo].questionText;
    } else
      return "";
  }

  int getlength() {
    return questionlist.length;
  }

}
