import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),  // Soal 3: Add padding to the container
      child: Row(
        children: [
          Expanded(
            // Soal 1: Use Expanded and align Column to the start
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,  // Soal 1: Align column to start
              children: [
                // Soal 2: Wrap the first text in a Container and add padding
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),  // Soal 2: Padding for the first text
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Soal 2: Set the text color to grey
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Soal 3: Star icon and '41' text
          Icon(
            Icons.star,
            color: Colors.red,  // Soal 3: Set the star color to red
          ),
          const Text('41'),  // Soal 3: Text '41'
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Fitria Ramadhani Prihandiva - 2241760055',  // Your name and NIM
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Soal 3: Replace 'Hello World' with titleSection
        body: Column(
          children: [
            titleSection,  // Use the titleSection in the body
          ],
        ),
      ),
    );
  }
}
