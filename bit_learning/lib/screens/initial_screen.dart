import 'package:flutter/material.dart';
import 'package:bit_learning/screens/home_screen.dart';
import 'package:bit_learning/widgets/custom_button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?auto=format&fit=crop&w=800&q=60',
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.red,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Winter \nVacation Trips',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                ),
                const SizedBox(height: 10),
                Text(
                  'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Let\'s Go!',
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xFF6A62B7),
                  suffix: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
