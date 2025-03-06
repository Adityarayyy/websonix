import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {


        List<Map<String, String>> songs = [
      {
        "title": "Kaavaala",
        "artist": "Anirudh Ravichander",
        "image": "https://via.placeholder.com/150" // Replace with actual image URL
      },
      {
        "title": "Kaavaala",
        "artist": "Anirudh Ravichander",
        "image": "https://via.placeholder.com/150"
      },
      {
        "title": "Kaavaala",
        "artist": "Anirudh Ravichander",
        "image": "https://via.placeholder.com/150"
      },
      {
        "title": "Kaavaala",
        "artist": "Anirudh Ravichander",
        "image": "https://via.placeholder.com/150"
      },
    ];


    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Grid Section
            SizedBox(
              height: 200,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.5,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: 6, // Number of items
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.black : Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(2, 4),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Item ${index + 1}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Highlighted Section
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber.withOpacity(0.5),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              height: 150,
              child: const Center(
                child: Text(
                  "Featured Content",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // New Releases Section
            const Text(
              'NEW RELEASES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
            height: 180,
            width: 800, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                  shrinkWrap: true, // Allows ListView to be constrained inside a Column
                physics: BouncingScrollPhysics(),
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Colors.deepPurple.shade700,
                    elevation: 4,
                    child: SizedBox(
                      width: 150, // Adjust width as needed
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'lib/assets/goa.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            songs[index]["title"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            songs[index]["artist"]!,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        SizedBox(height: 10,),

      Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xFF5E2B8F), Color(0xFF6F3FA9)], // Purple gradient
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Album Art
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'lib/assets/goa.jpg', // Replace with actual image URL
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          
          // Song Title
              Expanded(
                child: SizedBox(
                  height: 20, // Adjust height as needed
                  child: Marquee(
                    text: 'Very Long Song Name',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    blankSpace: 50.0,
                    velocity: 30.0, // Speed of scrolling
                    pauseAfterRound: Duration(seconds: 1), // Pause before repeating
                    startPadding: 10.0,
                  ),
                ),
              ),

          
          // Playback Controls
          IconButton(
            icon: const Icon(Icons.skip_previous, color: Colors.white, size: 30),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.pause_circle_outline, color: Colors.white, size: 36),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.skip_next, color: Colors.white, size: 30),
            onPressed: () {},
          ),

          // Repeat and Favorite Icons
          IconButton(
            icon: const Icon(Icons.repeat, color: Colors.white, size: 24),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white, size: 24),
            onPressed: () {},
          ),
        ],
      ),
    )
            // Placeholder for new releases
          ],
        ),
      ),
    );
  }
}
