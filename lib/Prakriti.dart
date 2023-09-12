import 'package:flutter/material.dart';
import 'globals.dart' as globals;

class Prakriti extends StatefulWidget {
  const Prakriti({super.key});

  @override
  State<Prakriti> createState() => _PrakritiState();
}

class _PrakritiState extends State<Prakriti> {
  @override
  String result = "";
  Widget build(BuildContext context) {
    if (globals.vata_score > globals.kapha_score) {
      if (globals.pitta_score > globals.vata_score) {
        result = "PITTA";
      } else {
        result = "VATA";
      }
    } else {
      if (globals.kapha_score > globals.pitta_score) {
        result = "KAPHA";
      } else {
        result = "PITTA";
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PhenoTypeTech  -  Know Your Prakriti',textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Color.fromARGB(255, 214, 204, 198),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Your Prakriti is  ${result}",
                    style: const TextStyle(
                      fontFamily: 'Pacifio',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 47, 79, 134),
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 240, 158, 84),
                    ),
                    onPressed: () {
                      if (result == "KAPHA") {
                        Navigator.pushNamed(context, "dietkapha");
                      } else if (result == "PITTA") {
                        Navigator.pushNamed(context, "dietpitta");
                      } else if (result == "VATA") {
                        Navigator.pushNamed(context, "dietvata");
                      }
                    },
                    child: const Text(
                      "Dietary Recommendations",
                      style: TextStyle(
                        fontFamily: 'Pacificio',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 240, 158, 84),
                    ),
                    onPressed: () {
                      if (result == "KAPHA") {
                        Navigator.pushNamed(context, "yogakapha");
                      } else if (result == "PITTA") {
                        Navigator.pushNamed(context, "yogapitta");
                      } else if (result == "VATA") {
                        Navigator.pushNamed(context, "yogavata");
                      }
                    },
                    child: const Text(
                      "Yoga Recommendations",
                      style: TextStyle(
                        fontFamily: 'Pacificio',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
