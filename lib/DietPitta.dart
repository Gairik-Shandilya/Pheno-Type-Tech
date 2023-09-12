
import 'package:flutter/material.dart';


class DietPitta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        
          appBar: AppBar(
            title: Text('Diet for Pitta'),
            backgroundColor:  Colors.blueGrey,
          ),
          body: SingleChildScrollView(
            
            child: Center(
              child: Column(children: <Widget>[
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Coconut.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Meat.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Milk.jpg"),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Mint.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Beans.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/Oliveoil.jpg"),
              ),
              
                    ]),
            ),
          )
          
        ),
    );
  }
}