import 'package:flutter/material.dart';
import 'package:bit_learning/screens/product_des_screen.dart';
import 'package:bit_learning/widgets/custom_travel_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> category = [
    'All',
    'Popular',
    'Featured',
    'New Arrivals',
    'Recommended',
    'Recommended',
  ];

  int selectedCategoryIndex = 0;

  final List<Map<String, String>> travelDetails = [
    {
      'title': 'Northern Hills',
      'rating': '4.5',
      'img':
          'https://media.istockphoto.com/id/904172104/photo/weve-made-it-all-this-way-i-am-proud.jpg?s=612x612&w=0&k=20&c=MewnsAhbeGRcMBN9_ZKhThmqPK6c8nCT8XYk5ZM_hdg=',
      'desc':
          'The Northern Hills offer breathtaking landscapes with rolling green mountains, peaceful trails, and fresh, crisp air. Visitors can enjoy hiking, photography, and exploring local villages while experiencing the serene natural environment. It is an ideal destination for those seeking adventure, relaxation, and an escape from city life.',
    },
    {
      'title': 'Lakeside View',
      'rating': '4.8',
      'img':
          'https://t3.ftcdn.net/jpg/03/01/84/54/360_F_301845445_Aj4iICMuzOfFkKW0U43l4aFAo05HZxIZ.jpg',
      'desc':
          'Lakeside View is a serene destination featuring calm waters surrounded by lush greenery and majestic mountains. Perfect for boating, fishing, or peaceful reflection, it offers a relaxing retreat. Travelers can enjoy picnics, sunrise views, and capturing stunning photographs, making it an unforgettable and peaceful experience in nature.',
    },
    {
      'title': 'Mountain Escape',
      'rating': '4.3',
      'img':
          'https://assets.bucketlistly.blog/sites/5adf778b6eabcc00190b75b1/content_entry5b155bed5711a8176e9f9783/5c4fbe2246025317508def41/files/nepal-everest-base-camp-everest-travel-photo-20190128094442660-main-image.jpg',
      'desc':
          'Mountain Escape is perfect for adventure seekers who love trekking, climbing, and breathtaking panoramic views. Towering peaks, challenging trails, and fresh mountain air provide an exhilarating experience. Visitors can explore local villages, wildlife, and enjoy camping under the stars, making it an unforgettable journey into the heart of nature and adventure.',
    },
    {
      'title': 'Desert Adventure',
      'rating': '4.6',
      'img': 'https://www.bsr.org/images/heroes/bsr-travel-hero..jpg',
      'desc':
          'Desert Adventure takes you across endless golden sands with rolling dunes and dramatic landscapes. Visitors can enjoy camel rides, sunset views, stargazing, and photography. The unique environment offers a chance to experience silence, adventure, and the beauty of nature in its raw form. It is ideal for thrill seekers and explorers.',
    },
    {
      'title': 'Tropical Paradise',
      'rating': '4.7',
      'img':
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=800&q=60',
      'desc':
          'Tropical Paradise is a lush, vibrant destination filled with exotic plants, sandy beaches, and crystal-clear waters. Visitors can relax in hammocks, swim, snorkel, or explore hidden trails. The warm climate, colorful wildlife, and serene environment make it an ideal spot for relaxation, photography, and reconnecting with nature.',
    },
    {
      'title': 'City Lights',
      'rating': '4.4',
      'img':
          'https://images.unsplash.com/photo-1494526585095-c41746248156?auto=format&fit=crop&w=800&q=60',
      'desc':
          'City Lights offers a lively urban experience with sparkling skyscrapers, vibrant nightlife, and cultural attractions. Visitors can enjoy shopping, dining, entertainment, and city tours. The blend of modern architecture and historic sites provides a unique experience. It is perfect for travelers seeking excitement, adventure, and memorable cityscapes.',
    },
    {
      'title': 'Forest Retreat',
      'rating': '4.9',
      'img':
          'https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=800&q=60',
      'desc':
          'Forest Retreat is a peaceful sanctuary surrounded by dense woodlands, wildlife, and natural streams. Visitors can hike, camp, or simply relax amid the calming sounds of nature. Perfect for meditation, photography, and reconnecting with the environment, this retreat provides a refreshing escape from the hustle of city life and everyday stress.',
    },
  ];

  final PageController _pageController = PageController(viewportFraction: 0.85);
  int currentPage = 0;

  final bool screenWidth = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //refernce web
      // header --> appbar
      appBar: AppBar(
        leading: Image.asset('assets/fi_menu.png'),
        centerTitle: true,
        title: Text(
          'Discover',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
            spacing: 10,
            children: [
              SizedBox(
                height: 20,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    final isSelected = selectedCategoryIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text(
                          category[index],
                          style: TextStyle(
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: isSelected
                                ? Color(0xFF403A7A)
                                : Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  padEnds: false,
                  controller: _pageController,
                  itemCount: travelDetails.length,
                  onPageChanged: (index) {
                    setState(() => currentPage = index);
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CustomTravelCard(
                        isGrid: false,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDesScreen(
                                title: travelDetails[index]['title']!,
                                rating: travelDetails[index]['rating']!,
                                img: travelDetails[index]['img']!,
                                desc: travelDetails[index]["desc"]!,
                              ),
                            ),
                          );
                        },
                        title: travelDetails[index]['title']!,
                        rating: travelDetails[index]['rating']!,
                        img: travelDetails[index]['img']!,
                      ),
                    );
                  },
                ),
              ),

              SmoothPageIndicator(
                controller: _pageController,
                count: travelDetails.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Color(0xFF403A7A),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('View All'),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, //declear items to show
                    crossAxisSpacing: 10, //give gap between horizontal
                    mainAxisSpacing: 10, //give between vertical
                    childAspectRatio: 175 / 180,
                  ),
                  itemCount: travelDetails.length,
                  itemBuilder: (context, index) {
                    return CustomTravelCard(
                      title: travelDetails[index]['title']!,
                      rating: travelDetails[index]['rating']!,
                      img: travelDetails[index]['img']!,
                      height: 180,
                      width: 175,
                      isGrid: true,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProductDesScreen(
                              title: travelDetails[index]['title']!,
                              rating: travelDetails[index]['rating']!,
                              img: travelDetails[index]['img']!,
                              desc: travelDetails[index]["desc"]!,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
