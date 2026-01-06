import 'package:flutter/material.dart';

class ProductDesScreen extends StatelessWidget {
  final String title;
  final String img;
  final String rating;
  final String desc;
  const ProductDesScreen({
    required this.rating,
    super.key,
    required this.title,
    required this.img,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Red top section
            Container(
              height: screenHeight * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // White section slightly overlapping
            Container(
              width: double.infinity,
              transform: Matrix4.translationValues(
                0.0,
                -50.0,
                0.0,
              ), // overlap effect
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      for (int i = 1; i <= 5; i++)
                        Icon(
                          i <= double.parse(rating)
                              ? Icons.star
                              : Icons.star_border,
                          color: Color(0xFFF4D150),
                          size: 16,
                        ),

                      const SizedBox(width: 8),
                      Text(
                        rating,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(desc, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
