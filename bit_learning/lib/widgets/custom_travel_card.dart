import 'package:flutter/material.dart';

class CustomTravelCard extends StatelessWidget {
  final String title;
  final String rating;
  final String img;
  final double? height;
  final double? width;
  final void Function()? onTap;
  final bool isGrid;
  const CustomTravelCard({
    super.key,
    required this.title,
    required this.rating,
    required this.img,
    this.height = 200,
    this.width = 300,
    this.onTap,
    required this.isGrid,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: isGrid ? 50 : 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(isGrid ? 16 : 20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: isGrid ? 16 : 24,
                        ),
                      ),

                      Container(
                        width: isGrid ? 15 : 25,
                        height: isGrid ? 15 : 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: isGrid ? 10 : 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      for (int i = 1; i <= 5; i++)
                        Icon(
                          i <= double.parse(rating)
                              ? Icons.star
                              : Icons.star_border,
                          color: Colors.yellow,
                          size: isGrid ? 10 : 16,
                        ),

                      const SizedBox(width: 8),
                      Text(
                        rating,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: isGrid ? 14 : 18,
                        ),
                      ),
                    ],
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