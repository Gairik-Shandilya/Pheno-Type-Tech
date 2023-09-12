import 'package:prakriti_finder/option.dart';

class OptionBrain {
  List<Option> optionlist = [
    Option('Thin and Lean', 'Medium', 'Well Built'),
    Option('Dry', 'Normal', 'Greasy'),
    Option('Brown', 'Grey', 'Black'),
    Option('Dry,Rough', 'Soft,Sweating', 'Moist,Greasy'),
    Option('Dark', 'Pinkish', 'Glowing'),
    Option('Underweight', 'Normal', 'Overweight'),
    Option('Blackish', 'Redish', 'Pinkish'),
    Option('Irregular,Blackish', 'Medium,Yellowish', 'Large,White'),
    Option('Fast', 'Medium', 'Slow'),
    Option('Restless', 'Aggressive', 'Stable'),
    Option('Short term', 'Good Memory', 'Long Term'),
    Option('Less', 'Moderate', 'Sleepy'),
    Option('Dislike Cold', 'Dislike Heat', 'Dislike Moist'),
    Option('Anxiety', 'Anger', 'Calm'),
    Option('Changes Quickly', 'Changes Slowly', 'Constant'),
    Option('Improper Chewing', 'Irregular Chewing', 'Proper Chewing'),
    Option('Irregular', 'Sudden and Sharp', 'Skips Meal'),
    Option('Less than Normal', 'More than Normal', 'Normal'),
    Option('Weak', 'Healthy', 'Heavy'),
    Option('Jealous,Fearful', 'Egoistic,Fearless', 'Forgiving,Grateful'),
    Option('Low', 'Medium', 'High'),
    Option('Rough', 'Fast', 'Deep'),
    Option('Sky', 'Fire', 'Water'),
    Option('Introvert', 'Ambivert', 'Extrovert'),
    Option('Negligible', 'Mild', 'Strong'),
  ];

  String getOptionText(int quesNo, int optionNo) {
    if (optionNo == 1) {
      if (quesNo < optionlist.length) {
        return optionlist[quesNo].option1Text;
      }
    }
    if (optionNo == 2) {
      if (quesNo < optionlist.length) {
        return optionlist[quesNo].option2Text;
      }
    }
    if (optionNo == 3) {
      if (quesNo < optionlist.length) {
        return optionlist[quesNo].option3Text;
      }
    } else
      return "";
    return "";
  }

  int getlength() {
    return optionlist.length;
  }
}
