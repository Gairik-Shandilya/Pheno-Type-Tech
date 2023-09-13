import 'package:flutter/material.dart';
import 'package:prakriti_finder/Diet/DietKapha.dart';
import 'package:prakriti_finder/Diet/DietPitta.dart';
import 'package:prakriti_finder/Diet/DietVata.dart';
import 'package:prakriti_finder/Prakriti.dart';
import 'package:prakriti_finder/Yoga/YogaKapha.dart';
import 'package:prakriti_finder/Yoga/YogaPitta.dart';
import 'package:prakriti_finder/Yoga/YogaVata.dart';
import 'package:prakriti_finder/Quiz/optionbrain.dart';
import 'package:prakriti_finder/Quiz/quizPage.dart';
import 'package:prakriti_finder/Quiz/quizbrain.dart';
import 'package:prakriti_finder/Bot.dart';

QuizBrain quizBrain = QuizBrain();
OptionBrain optionBrain = OptionBrain();
Quizzler quizzler = Quizzler();
void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget { 
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "prakriti": (context) => const Prakriti(),
        "dietkapha": (context) => DietKapha(),
        "dietvata": (context) => DietVata(),
        "dietpitta": (context) => DietPitta(),
        "yogakapha": (context) => YogaKapha(),
        "yogavata": (context) => YogaVata(),
        "yogapitta": (context) => YogaPitta(),
        "bot":(context) => Bot(),
      },
      home: Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text(
                'PhenoTypeTech  -  Know your prakriti',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),
            backgroundColor: Colors.blueGrey),
        backgroundColor: Color.fromARGB(255, 214, 204, 198),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}