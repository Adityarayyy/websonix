import 'package:flutter/material.dart';

class SuperlistenerScreen extends StatefulWidget {
  const SuperlistenerScreen({super.key});

  @override
  State<SuperlistenerScreen> createState() => _SuperlistenerScreenState();
}

class _SuperlistenerScreenState extends State<SuperlistenerScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: 
      // backgroundColor: const Color(0xFF1A1121),
      body: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF181029), Color(0xFF140A20)], // Gradient colors
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                  
                //   children: [
                //     Column(
                //       children: [
                //         const SizedBox(height: 40),
                        
                //         // Title Section
                //         const Text(
                //           "Get exclusive access with our",
                //           style: TextStyle(
                //               fontSize: 24,
                //               color: Colors.white,
                //               fontWeight: FontWeight.bold),
                //           textAlign: TextAlign.center,
                //         ),
                //         const Text(
                //           "Superlistener plans",
                //           style: TextStyle(
                //               fontSize: 24,
                //               color: Colors.purpleAccent,
                //               fontWeight: FontWeight.bold),
                //           textAlign: TextAlign.center,
                //         ),
                        
                //         const SizedBox(height: 10),
                        
                //         const Text(
                //           "\$99 for 3 months, then \$69 per month after.\nOffer only available if you haven’t tried Superlisteners.",
                //           style: TextStyle(fontSize: 14, color: Colors.white70),
                //           textAlign: TextAlign.center,
                //         ),
                        
                //         const SizedBox(height: 10),
                        
                //         // "Start Free Trial" Button
                //         ElevatedButton(
                //           onPressed: () {},
                //           style: ElevatedButton.styleFrom(
                //             backgroundColor: Colors.purpleAccent,
                //             shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(25)),
                //             padding:
                //                 const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                //           ),
                //           child: const Text("Start Free Trial",
                //               style:
                //                   TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                //         ),
                //       ],
                //     ),
        
                //     Image.asset('lib/assets/sup_listener.png', fit: BoxFit.contain,)
                //   ],
                // ),
        
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Color(0xFF1B1125), // Dark background
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
        // Left Side - Text and Button
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get exclusive access with our",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Superlistener",
                      style: TextStyle(
                        color: Color(0xFFB163FF), // Purple color
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " plans",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "\$99 for 3 months, then \$69 per month after. Offer only available if you haven’t tried Superlisteners.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  // Handle Terms apply click
                },
                child: Text(
                  "Terms apply",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFB163FF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Start Free Trial",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        
        // Right Side - Image
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              'lib/assets/sup_listener.png', // Change this to your image path
              width: 190,
              fit: BoxFit.contain
            ),
          ),
        ),
            ],
          ),
        ),
        
        
        
                const SizedBox(height: 30),
        
                // Subtitle
                const Text(
                  "Unlock the ultimate music experience\nwith WebSonix Super Subscription.",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
        
                const SizedBox(height: 20),
        
          Table(
            
            border: TableBorder(
            top: BorderSide(color: Colors.white70),
            bottom: BorderSide(color: Colors.white70),
            horizontalInside: BorderSide(color: Colors.white70),
          ),
          columnWidths: {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(1),
            2: FlexColumnWidth(1),
          },
          children: [
            // Table Header
            TableRow(
        // decoration: BoxDecoration(color: Colors.purple),
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("What you'll get", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Free Plan", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,  fontSize: 16)),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Super Plan", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          ),
        ],
            ),
            
            // Table Rows
        
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Music Library", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Curated Playlists", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Ad-Free Experienxce", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.close_rounded, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Audio Quality", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Standard", style: TextStyle(color: Colors.white,  fontSize: 16)),
        
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("High Quality", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Exclusive Releases", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.close_rounded, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Live Event Priority", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.close_rounded, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Offline Listening", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.close_rounded, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("NFT Ownership", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.close_rounded, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline,color: Colors.white,),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text("Family Plan", style: TextStyle(color: Colors.white,  fontSize: 16)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.close_rounded, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.check_circle_outline, color: Colors.white),
            ),
          ],
        ),
          ],
        ),
        
        SizedBox(height: 20,),
        
        
        // subscription packs


        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
        colors: [Color(0xFF362052), Color(0xFF4B68D1)], // Gradient colors
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        // Logo and Pro Title
        Row(
          children: [
            Image.asset(
              'lib/assets/logo.png', // Replace with your actual logo path
              height: 30,
            ),
            SizedBox(width: 10),
            Text(
              "Pro",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        
        // Price
        Text(
          "\$9/month",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        
        // Divider Line
        Container(
          width: double.infinity,
          height: 2,
          color: Colors.white54,
        ),
        SizedBox(height: 10),
        
        // Feature List
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBulletPoint("All Lite Tier Benefits +"),
            _buildBulletPoint("First access to exclusive music drops"),
            _buildBulletPoint("Listen to the full catalog in lossless audio"),
            _buildBulletPoint("See what your friends are listening"),
          ],
        ),
        SizedBox(height: 20),
        
        // Get Pro Button
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFFE3B24D),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "Get Pro now",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        
        // Terms Apply
        Center(
          child: Text(
            "Terms apply",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
            ],
          ),
    ),

    // 2nd pack

    const SizedBox(height: 40,),

        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
        colors: [Color(0xFF0581C8), Color(0xFF04AAD0), Color(0xFF01D0C0)], // Gradient colors
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        // Logo and Pro Title
        Row(
          children: [
            Image.asset(
              'lib/assets/logo.png', // Replace with your actual logo path
              height: 30,
            ),
            SizedBox(width: 10),
            Text(
              "Lite",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        
        // Price
        Text(
          "\$5/month",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        
        // Divider Line
        Container(
          width: double.infinity,
          height: 2,
          color: Colors.white54,
        ),
        SizedBox(height: 10),
        
        // Feature List
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBulletPoint("All Lite Tier Benefits +"),
            _buildBulletPoint("Stream Ad free music"),
            _buildBulletPoint("High Priority in live events & support artists"),
            _buildBulletPoint("Own a part of exclusive NFT of the artists or their work"),
          ],
        ),
        SizedBox(height: 20),
        
        // Get Pro Button
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 12),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFFE3B24D),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "Get Lite now",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        
        // Terms Apply
        Center(
          child: Text(
            "Terms apply",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline,
            ),
          ),
        ),
            ],
          ),
    ),

    // 3rd pack

    const SizedBox(height: 40,),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
        colors: [Color(0xFF362052), Color(0xFF4B68D1)], // Gradient colors
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        // Logo and Pro Title
        Row(
          children: [
            Image.asset(
              'lib/assets/logo.png', // Replace with your actual logo path
              height: 30,
            ),
            SizedBox(width: 10),
            Text(
              "Free",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        
        // Price
        Text(
          "\$9/month",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        
        // Divider Line
        Container(
          width: double.infinity,
          height: 2,
          color: Colors.white54,
        ),
        SizedBox(height: 10),
        
        // Feature List
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBulletPoint("All Lite Tier Benefits +"),
            _buildBulletPoint("First access to exclusive music drops"),
            _buildBulletPoint("Listen to the full catalog in lossless audio"),
            _buildBulletPoint("See what your friends are listening"),
          ],
        ),
        // SizedBox(height: 20),
        
        // // Get Pro Button
        // Container(
        //   width: double.infinity,
        //   padding: EdgeInsets.symmetric(vertical: 12),
        //   alignment: Alignment.center,
        //   decoration: BoxDecoration(
        //     color: Color(0xFFE3B24D),
        //     borderRadius: BorderRadius.circular(30),
        //   ),
        //   child: Text(
        //     "Get Pro now",
        //     style: TextStyle(
        //       color: Colors.brown,
        //       fontSize: 16,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        // SizedBox(height: 10),
        
        // // Terms Apply
        // Center(
        //   child: Text(
        //     "Terms apply",
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 14,
        //       fontWeight: FontWeight.bold,
        //       decoration: TextDecoration.underline,
        //     ),
        //   ),
        // ),
            ],
          ),
    ),
        
        
        
        // ------------------------------------------------------
                // Comparison Table
                // Container(
                //   decoration: BoxDecoration(
                //     color: const Color(0xFF2A1A3A),
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   padding: const EdgeInsets.all(12),
                //   child: Column(
                //     children: [
                //       _buildTableHeader(),
                //       const Divider(color: Colors.white38),
                //       _buildTableRow("Music Library", true, true),
                //       _buildTableRow("Curated Playlists", true, true),
                //       _buildTableRow("Ad-Free Experience", false, true),
                //       _buildTableRow("Audio Quality", false, true, isText: true),
                //       _buildTableRow("Exclusive Releases", false, true),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildBulletPoint(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        Icon(Icons.circle, size: 8, color: Colors.white),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
 Widget _buildTableHeader() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("what you'll get", style: TextStyle(fontSize: 16, color: Colors.white70, fontWeight: FontWeight.bold)),
          Text("Free Plan", style: TextStyle(fontSize: 16, color: Colors.white70)),
          Text("Super Plan", style: TextStyle(fontSize: 16, color: Colors.white70)),
        ],
      ),
    );
  }

  Widget _buildTableRow(String feature, bool freePlan, bool superPlan, {bool isText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(feature, style: const TextStyle(fontSize: 16, color: Colors.white)),
          isText
              ? const Text("Standard", style: TextStyle(fontSize: 16, color: Colors.white70))
              : Icon(freePlan ? Icons.check_circle : Icons.cancel, color: freePlan ? Colors.white : Colors.red),
          isText
              ? const Text("High Quality", style: TextStyle(fontSize: 16, color: Colors.white70))
              : Icon(superPlan ? Icons.check_circle : Icons.cancel, color: superPlan ? Colors.white : Colors.red),
        ],
      ),
    );
  }


