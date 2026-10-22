import 'package:flutter_test/flutter_test.dart';

import 'package:tugas2_techevent_flutter/main.dart';

void main() {
  testWidgets('Halaman home tampil', (WidgetTester tester) async {
    await tester.pumpWidget(const TechEventApp());

    expect(find.text('TechEvent Indonesia'), findsOneWidget);
    expect(find.text('Katalog Event Edukasi'), findsOneWidget);
    expect(find.text('Seminar Teknologi 2026'), findsOneWidget);
  });
}
