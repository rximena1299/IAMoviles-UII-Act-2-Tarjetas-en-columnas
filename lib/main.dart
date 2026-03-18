import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppleMusicScreen(),
    );
  }
}

class AppleMusicScreen extends StatelessWidget {
  const AppleMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFA2D48),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              "Apple Music",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Ximena Reyes 6ºI",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFA2D48),
              Color(0xFFFF758F),
              Color(0xFFFFB3C1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: const [
            MusicCard(
              image: "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/hits.png",
              title: "Top Hits",
              description: "Las canciones más escuchadas del momento",
            ),
            MusicCard(
              image: "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/popvibes.png",
              title: "Pop Vibes",
              description: "Lo mejor del pop actual para tu mood",
            ),
            MusicCard(
              image: "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/chillmusic.png",
              title: "Chill Music",
              description: "Relájate con beats suaves y tranquilos",
            ),
            MusicCard(
              image: "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/workout.png",
              title: "Workout",
              description: "Energía al máximo para entrenar",
            ),
            MusicCard(
              image: "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/romance.png",
              title: "Romance",
              description: "Canciones perfectas para enamorarte",
            ),
            MusicCard(
              image: "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/latinhits.png",
              title: "Latin Hits",
              description: "Los mejores éxitos latinos del momento",
            ),
          ],
        ),
      ),
    );
  }
}

class MusicCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const MusicCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15), // sombra suave
            blurRadius: 12,
            offset: const Offset(0, 6), // profundidad
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        elevation: 0, // quitamos la default
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  image,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}