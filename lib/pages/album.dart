import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1121),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'lib/assets/goa.jpg', // Replace with actual asset path
                  height: 220,
                  width: 220,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Kabira (Encore)",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Arijit Singh, Harshdeep Kaur",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 20),
              const Icon(Icons.graphic_eq, color: Colors.white70, size: 40),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.purpleAccent),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_previous, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      isPlaying ? Icons.pause_circle : Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        isPlaying = !isPlaying;
                      });
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_next, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.queue_music, color: Colors.purpleAccent),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ListView(
                physics: const NeverScrollableScrollPhysics(), // Disable list's own scrolling
                shrinkWrap: true, // Allow ListView to be inside SingleChildScrollView
                children: const [
                  SongTile(title: "Balam Pichkari", artist: "Pritam, Benny Dayal", duration: "4:48"),
                  SongTile(title: "Ilahi", artist: "Pritam, Benny Dayal", duration: "3:48"),
                  SongTile(title: "Balam Pichkari", artist: "Pritam, Benny Dayal", duration: "4:48"),
                  SongTile(title: "Ilahi", artist: "Pritam, Benny Dayal", duration: "3:48"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SongTile extends StatelessWidget {
  final String title;
  final String artist;
  final String duration;

  const SongTile({
    super.key,
    required this.title,
    required this.artist,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2A1A3A),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'lib/assets/goa.jpg', // Replace with actual asset path
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text(artist, style: const TextStyle(color: Colors.white70)),
        trailing: Text(duration, style: const TextStyle(color: Colors.white70)),
      ),
    );
  }
}
