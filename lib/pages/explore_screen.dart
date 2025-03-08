import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search, color: Colors.white),
            filled: true,
            fillColor: Colors.grey[900],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category buttons
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     _buildCategoryButton("Music"),
              //     _buildCategoryButton("Games"),
              //   ],
              // ),
              // SizedBox(height: 10),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     _buildCategoryButton("Live Events", isHighlighted: true),
              //     _buildCategoryButton("Rooms"),
              //   ],
              // ),
        
              _buildSectionsGrid(),
              SizedBox(height: 20),
              // Discover section
              Text(
                "Discover Something New",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildHorizontalImageList(),
              SizedBox(height: 20),
              // Browse section
              Text(
                "Browse All",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildBrowseGrid(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildCategoryButton(String title, {bool isHighlighted = false}) {
  //   return Container(
  //     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
  //     decoration: BoxDecoration(
  //       color: isHighlighted ? Colors.orange : Colors.transparent,
  //       borderRadius: BorderRadius.circular(10),
  //       border: Border.all(color: Colors.white),
  //     ),
  //     child: Text(
  //       title,
  //       style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }

  // Widget _buildHorizontalImageList() {
  //   return SizedBox(
  //     height: 180,
  //     child: ListView(
  //       scrollDirection: Axis.horizontal,
  //       children: List.generate(
  //         4,
  //         (index) => Container(
  //           width: 100,
  //           margin: EdgeInsets.only(right: 10),
  //           decoration: BoxDecoration(
  //             color: Colors.grey[800],
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           child: Icon(Icons.play_arrow, color: Colors.white),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget _buildHorizontalImageList() {
  List<String> imageUrls = [
    "lib/assets/sup_listener.png", // Replace with your actual image paths
    "lib/assets/sup_listener.png", // Replace with your actual image paths
    "lib/assets/sup_listener.png", // Replace with your actual image paths
    "lib/assets/sup_listener.png", // Replace with your actual image paths
  ];

  return SizedBox(
    height: 180,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(
        imageUrls.length,
        (index) => Container(
          width: 120,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrls[index]), // Using local asset images
              fit: BoxFit.cover, // Ensures the image covers the container
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.play_circle_fill,
              color: Colors.white.withOpacity(0.8),
              size: 40, // Play button size
            ),
          ),
        ),
      ),
    ),
  );
}


  Widget _buildBrowseGrid() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 3,
      children: [
        _buildBrowseButton("For You"),
        _buildBrowseButton("New Releases"),
        _buildBrowseButton("Hindi"),
        _buildBrowseButton("English"),
        _buildBrowseButton("Electronic"),
        _buildBrowseButton("Instrumental"),
      ],
    );
  }
  Widget _buildSectionsGrid() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 3,
      children: [
        _buildSectionButton("Music"),
        _buildSectionButton("Games"),
        _buildSectionButton("Live Events"),
        _buildSectionButton("Rooms"),
      ],
    );
  }

  Widget _buildSectionButton(String title) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('lib/assets/goa.jpg'),fit: BoxFit.fitWidth),
        
        // color: Colors.purple[700],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildBrowseButton(String title) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xff36255B),Color(0xff6D4AB7)
        ]),
        color: Colors.purple[700],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}


