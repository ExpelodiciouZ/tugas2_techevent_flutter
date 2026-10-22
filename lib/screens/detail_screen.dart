import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

// Halaman detail, isinya dikirim dari home lewat 2 parameter ini
class DetailScreen extends StatelessWidget {
  final String namaEvent;
  final String hargaEvent;

  const DetailScreen({
    super.key,
    required this.namaEvent,
    required this.hargaEvent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Event'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.event, size: 80, color: Colors.indigo),
            ),
            const SizedBox(height: 24),
            const Text(
              'Nama Event',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              namaEvent,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Harga Event',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              hargaEvent,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.indigo,
              ),
            ),
            const Spacer(),
            ActionButton(
              text: 'Kembali',
              color: Colors.indigo,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}