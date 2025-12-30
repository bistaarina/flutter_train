import 'package:flutter/material.dart';
import 'package:bit_learning/screens/next_page.dart';
import 'package:bit_learning/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Boolean variable to control shape change
  // false → shape will be circle
  // true → shape will be rectangle
  bool isChangedShape = false;

  // Variable to store number of shapes
  // Starts with 1 shape
  int count = 1;

  // Variable to store number value
  // Used for displaying text multiple times
  int numer = 0;

  final List<String> category = [
    'All',
    'Popular',
    'Featured',
    'New Arrivals',
    'Recommended',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      //refernce web
      // header --> appbar
      appBar: AppBar(
        backgroundColor: Colors.red,

        // leading: Icon(Icons.menu, color: Colors.white),
        centerTitle: true,
        title: Text(
          'Discover',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJy0QCeJDsQuC0Lq8bWrSzCY-JU6a0bI3Wwg&s",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 10,
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Text(
                      'Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 18,
                      ),
                    );
                  },
                ),
              ),

              Text(height.toString()),
              CustomButton(
                text: 'Bit',

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NextPage();
                      },
                    ),
                  );
                },
              ),
              CustomButton(
                text: 'Arina',
                style: TextStyle(fontFamily: 'Merriweather'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CustomButton(text: 'Class'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img.jpg"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Northern Mountain',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),

                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img.jpg"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Northern Mountain',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),

                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: 100),
              // Container(
              //   height: 100,
              //   width: 100,

              //   decoration: BoxDecoration(
              //     color: Colors.green,
              //     borderRadius: BorderRadius.all(Radius.circular(10)),
              //   ),
              // ),
              // SingleChildScrollView allows scrolling
              // Here it is used for horizontal scrolling
              // SingleChildScrollView(
              //   // Scroll direction is set to horizontal
              //   scrollDirection: Axis.horizontal,

              //   child: Row(
              //     // Space between each container
              //     spacing: 10,

              //     children: [
              //       // Loop to create multiple containers
              //       // Number of containers depends on 'count'
              //       for (int i = 0; i < count; i++)
              //         Container(
              //           // Height of each shape
              //           height: 100,

              //           // Width of each shape
              //           width: 100,

              //           decoration: BoxDecoration(
              //             // Change shape based on isChangedShape value
              //             // If true → rectangle
              //             // If false → circle
              //             shape: isChangedShape
              //                 ? BoxShape.rectangle
              //                 : BoxShape.circle,

              //             // Color of the shape
              //             color: Colors.yellow,
              //           ),
              //         ),
              //     ],
              //   ),
              // ),

              // // Image.asset("assets/img.png", height: 200),

              // //for text
              // Text("fsdf"),
              // Icon(Icons.add),
              // // Button with background color (Elevated button)
              // ElevatedButton(
              //   onPressed: () {
              //     setState(() {
              //       // Change the value of isChangedShape
              //       // If it is true, make it false
              //       // If it is false, make it true
              //       isChangedShape = !isChangedShape;
              //     });
              //   },
              //   // Text shown on the button
              //   child: Text("Change Shape"),
              // ),

              // // Loop to show text multiple times
              // // It will display the value of 'numer' as text
              // // The text will repeat 'numer' times
              // for (int i = 0; i < numer; i++) Text(numer.toString()),

              // // Button with border only (Outlined button)
              // OutlinedButton(
              //   onPressed: () {
              //     setState(() {
              //       // Increase the count value by 1
              //       // Used to add more shapes
              //       count++;
              //     });
              //   },
              //   // Text shown on the button
              //   child: Text("Add Shape"),
              // ),

              // // Simple text button (no background or border)
              // TextButton(
              //   onPressed: () {
              //     setState(() {
              //       // Increase the numer value by 1
              //       // This will increase the number of texts shown
              //       numer++;
              //     });
              //   },
              //   // Text shown on the button
              //   child: Text("Text button"),
              // ),

              //Container, Column /Row, Basic UI Widgets: Text, Image, Icon, SizedBox, Padding, Button (Elevated,Text, Outline)
              // Column(
              //   spacing: 10,
              //   children: [

              //   ],
              // ),

              //reuseable
              //grid widget
              //list widget
            ],
          ),
        ),
      ),
    );
  }
}
// ? :