import 'package:flutter/material.dart';
import 'package:flutter_padding/flutter_padding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Easy Padding Example')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('All').padAll(16),
            const Text('Top').padTop(8),
            const Text('Horizontal').padH(20),
            const Text('Custom').padOnly(left: 12, bottom: 10),
          ],
        ),
      ),
    );
  }
}
