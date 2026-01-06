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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: isGrid ? 60 : 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: isGrid ? 14 : 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: isGrid ? 20 : 28,
                        height: isGrid ? 20 : 28,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: isGrid ? 10 : 14,
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
                          color: Colors.amber,
                          size: isGrid ? 12 : 16,
                        ),
                      const SizedBox(width: 6),
                      Text(
                        rating,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: isGrid ? 12 : 14,
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
