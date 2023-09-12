import 'globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:prakriti_finder/main.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int i = 1;
  int vata_score = 0;
  int pitta_score = 0;
  int kapha_score = 0;

  String displayquesNo(i) {
    if (i <= quizBrain.getlength()) {
      return " $i.  ";
    } else
      return "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Center(
            child: Text(
              displayquesNo(i) + quizBrain.getQuestionText(i - 1),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 240, 158, 84)),
              child: Text(
                optionBrain.getOptionText(i - 1, 1),
                style: const TextStyle(
                  color: Color.fromARGB(255, 55, 27, 52),
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  switch (i) {
                    case 1:
                      globals.vata_score += 1;
                      break;
                    case 2:
                      globals.vata_score += 1;
                      break;
                    case 3:
                      globals.pitta_score += 1;
                      break;
                    case 4:
                      globals.vata_score += 1;
                      break;
                    case 5:
                      globals.kapha_score += 1;
                      break;
                    case 6:
                      globals.vata_score += 1;
                      break;
                    case 7:
                      globals.kapha_score += 1;
                      globals.pitta_score += 1;
                      break;
                    case 8:
                      globals.vata_score += 1;
                      break;
                    case 9:
                      globals.pitta_score += 1;
                      break;
                    case 10:
                      globals.vata_score += 1;
                      break;
                    case 11:
                      globals.vata_score += 1;
                      break;
                    case 12:
                      globals.vata_score += 1;
                      break;
                    case 13:
                      globals.vata_score + 1;
                      break;
                    case 14:
                      globals.vata_score += 1;
                      break;
                    case 15:
                      globals.vata_score += 1;
                      break;
                    case 16:
                      globals.vata_score + 1;
                      break;
                    case 17:
                      globals.vata_score += 1;
                      break;
                    case 18:
                      globals.vata_score += 1;
                      break;
                    case 19:
                      globals.vata_score += 1;
                      break;
                    case 20:
                      globals.vata_score += 1;
                      break;
                    case 21:
                      globals.vata_score += 1;
                      break;
                    case 22:
                      globals.vata_score += 1;
                      break;
                    case 23:
                      globals.vata_score += 1;
                      break;
                    case 24:
                      globals.vata_score += 1;
                      break;
                    case 25:
                      break;
                    default:
                      0;
                  }

                  i = i + 1;
                  if (i == 26) {
                    Navigator.pushNamed(context, "prakriti");
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 240, 158, 84)),
              child: Text(
                optionBrain.getOptionText(i - 1, 2),
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 55, 27, 52),
                ),
              ),
              onPressed: () {
                setState(() {
                  switch (i) {
                    case 1:
                      globals.pitta_score += 1;
                      break;
                    case 2:
                      break;
                    case 3:
                      globals.vata_score += 1;
                      break;
                    case 4:
                      globals.pitta_score += 1;
                      break;
                    case 5:
                      globals.pitta_score += 1;
                      break;
                    case 6:
                      break;
                    case 7:
                      globals.pitta_score += 1;
                      break;
                    case 8:
                      globals.pitta_score += 1;
                      break;
                    case 9:
                      break;
                    case 10:
                      globals.pitta_score += 1;
                      break;
                    case 11:
                      break;
                    case 12:
                      break;
                    case 13:
                      globals.pitta_score += 1;
                      break;
                    case 14:
                      globals.pitta_score += 1;
                      break;
                    case 15:
                      break;
                    case 16:
                      break;
                    case 17:
                      globals.pitta_score += 1;
                      break;
                    case 18:
                      globals.pitta_score += 1;
                      break;
                    case 19:
                      break;
                    case 20:
                      globals.pitta_score += 1;
                      break;
                    case 21:
                      break;
                    case 22:
                      globals.vata_score += 1;
                      break;
                    case 23:
                      globals.pitta_score += 1;
                      break;
                    case 24:
                      break;
                    case 25:
                      globals.kapha_score += 1;
                      break;
                    default:
                      0;
                  }
                  i = i + 1;
                  if (i == 26) {
                    Navigator.pushNamed(context, "prakriti");
                  }
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 240, 158, 84)),
              child: Text(
                optionBrain.getOptionText(i - 1, 3),
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 55, 27, 52),
                ),
              ),
              onPressed: () {
                setState(() {
                  switch (i) {
                    case 1:
                      globals.kapha_score += 1;
                      break;
                    case 2:
                      globals.pitta_score += 1;
                      break;
                    case 3:
                      globals.kapha_score += 1;
                      break;
                    case 4:
                      globals.kapha_score += 1;
                      break;
                    case 5:
                      break;
                    case 6:
                      globals.kapha_score += 1;
                      break;
                    case 7:
                      break;
                    case 8:
                      globals.kapha_score += 1;
                      break;
                    case 9:
                      globals.kapha_score += 1;
                      break;
                    case 10:
                      globals.kapha_score += 1;
                      break;
                    case 11:
                      globals.kapha_score + 1;
                      break;
                    case 12:
                      globals.kapha_score;
                      break;
                    case 13:
                      globals.kapha_score += 1;
                      break;
                    case 14:
                      globals.kapha_score += 1;
                      break;
                    case 15:
                      globals.kapha_score += 1;
                      break;
                    case 16:
                      break;
                    case 17:
                      break;
                    case 18:
                      globals.kapha_score += 1;
                      break;
                    case 19:
                      globals.kapha_score += 1;
                      break;
                    case 20:
                      globals.pitta_score += 1;
                      break;
                    case 21:
                      globals.kapha_score += 1;
                      break;
                    case 22:
                      globals.pitta_score += 1;
                      break;
                    case 23:
                      globals.kapha_score += 1;
                      break;
                    case 24:
                      globals.kapha_score += 1;
                      break;
                    case 25:
                      globals.pitta_score += 1;
                      break;
                    default:
                      0;
                  }
                  i = i + 1;
                  if (i == 26) {
                    Navigator.pushNamed(context, "prakriti");
                  }
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
