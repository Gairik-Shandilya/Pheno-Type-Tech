import 'package:flutter/material.dart';
import 'package:prakriti_finder/DietKapha.dart';
import 'package:prakriti_finder/DietPitta.dart';
import 'package:prakriti_finder/DietVata.dart';
import 'package:prakriti_finder/Prakriti.dart';
import 'package:prakriti_finder/YogaKapha.dart';
import 'package:prakriti_finder/YogaPitta.dart';
import 'package:prakriti_finder/YogaVata.dart';
import 'package:prakriti_finder/optionbrain.dart';
import 'package:prakriti_finder/quizPage.dart';
import 'package:prakriti_finder/quizbrain.dart';


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
        "dietvata":(context) => DietVata(),
        "dietpitta":(context) => DietPitta(),
        "yogakapha": (context) => YogaKapha(),
        "yogavata":(context) => YogaVata(),
        "yogapitta":(context) => YogaPitta(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'PhenoTypeTech  -  Know Your Prakriti',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'SourceSansPro',
              ),
            ),
          ),
          backgroundColor: Colors.blueGrey
        ),
        backgroundColor: Color.fromARGB(255, 214, 204, 198),
        body: const SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

