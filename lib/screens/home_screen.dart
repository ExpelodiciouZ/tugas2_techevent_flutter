import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';

// baris ini diaktifkan Sofil nanti pas ngisi navigasi
// import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TechEvent Indonesia'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Katalog Event Edukasi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          EventCard(
            namaEvent: 'Seminar Teknologi 2026',
            kategoriEvent: 'Seminar',
            hargaEvent: 'Rp50.000',
            icon: Icons.computer,
            onPressed: () {
              // BAGIAN SOFIL: SnackBar ini nanti diganti Navigator.push
              // ke DetailScreen(namaEvent: 'Seminar Teknologi 2026',
              // hargaEvent: 'Rp50.000')
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Detail: Seminar Teknologi 2026')),
              );
            },
          ),
          EventCard(
            namaEvent: 'Workshop Flutter Dasar',
            kategoriEvent: 'Workshop',
            hargaEvent: 'Rp75.000',
            icon: Icons.phone_android,
            onPressed: () {
              // BAGIAN SOFIL: ganti jadi Navigator.push ke DetailScreen
              // (namaEvent: 'Workshop Flutter Dasar', hargaEvent: 'Rp75.000')
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Detail: Workshop Flutter Dasar')),
              );
            },
          ),
          EventCard(
            namaEvent: 'Webinar Kecerdasan Buatan',
            kategoriEvent: 'Webinar',
            hargaEvent: 'Gratis',
            icon: Icons.smart_toy,
            onPressed: () {
              // BAGIAN SOFIL: ganti jadi Navigator.push ke DetailScreen
              // (namaEvent: 'Webinar Kecerdasan Buatan', hargaEvent: 'Gratis')
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Detail: Webinar Kecerdasan Buatan'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
