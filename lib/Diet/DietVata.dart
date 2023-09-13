
import 'package:flutter/material.dart';


class DietVata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        
          appBar: AppBar(
            title: Text('Diet for Vata'),
            backgroundColor:  Colors.blueGrey,
          ),
          body: SingleChildScrollView(
            
            child: Center(
              child: Column(children: <Widget>[
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/ghee.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Tofu.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Cinnamon.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Avocado.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Grain.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/wheat.png"),
              ),
              
              
              
                    ]),
            ),
          )
          
        ),
    );
  }
}