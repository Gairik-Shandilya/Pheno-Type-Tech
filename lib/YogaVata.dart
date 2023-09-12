
import 'package:flutter/material.dart';


class YogaVata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        
          appBar: AppBar(
            title: Text('Yoga for Vata'),
            backgroundColor:  Colors.blueGrey,
          ),
          body: SingleChildScrollView(
            
            child: Center(
              child: Column(children: <Widget>[
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Matsyendrasana.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Uttanasana.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Vrishasana.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Virabhadrasana.jpg"),
              ),
              
              
                    ]),
            ),
          )
          
        ),
    );
  }
}