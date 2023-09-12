
import 'package:flutter/material.dart';


class YogaPitta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        
          appBar: AppBar(
            title: Text('Yoga for Pitta'),
            backgroundColor:  Colors.blueGrey,
          ),
          body: SingleChildScrollView(
            
            child: Center(
              child: Column(children: <Widget>[
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Badhakonasana.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Sarvangasana.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Sukhasana-easy.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Bandhasana.jpg"),
              ),
              
              
                    ]),
            ),
          )
          
        ),
    );
  }
}