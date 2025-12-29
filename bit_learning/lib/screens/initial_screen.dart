
import 'package:flutter/material.dart';
import 'package:bit_learning/screens/home_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 500, width: double.maxFinite, color: Colors.red),
          ElevatedButton(
            onPressed: () { 

              //pushReplacement example 
              //push  -->stack
              //pop
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
            child: Text('data'), //replace with your widg`etgi
          ),
        ],
      ),
    );
  }
}