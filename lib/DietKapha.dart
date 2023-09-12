
import 'package:flutter/material.dart';


class DietKapha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        
          appBar: AppBar(
            title: Text('Diet for Kapha'),
            backgroundColor:  Colors.blueGrey,
          ),
          body: SingleChildScrollView(
            
            child: Center(
              child: Column(children: <Widget>[
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Brocolli.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Legumes.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Saffloweroil.png"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Blackpepper.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Cauliflower.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Gingertea.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Goatmilk.jpg"),
              ),
            
                    ]),
            ),
          )
          
        ),
    );
  }
}