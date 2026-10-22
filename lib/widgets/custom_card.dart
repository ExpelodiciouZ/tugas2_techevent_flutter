import 'package:flutter/material.dart';

import 'custom_button.dart';

// Kartu event yang dipakai ulang untuk tiap event
class EventCard extends StatelessWidget {
  final String namaEvent;
  final String kategoriEvent;
  final String hargaEvent;
  final IconData icon;
  final VoidCallback onPressed;

  const EventCard({
    super.key,
    required this.namaEvent,
    required this.kategoriEvent,
    required this.hargaEvent,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 32, color: Colors.indigo),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaEvent,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    kategoriEvent,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    hargaEvent,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ActionButton(
                    text: 'Lihat Detail',
                    color: Colors.indigo,
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
