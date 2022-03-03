import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// App
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List of Hotels
  List<String> hotels = [
    "Hilton Hotel",
    "Sarova",
    "86 Hotel",
    "Kempisnki",
    "Safari Park",
    "Paramount Hotel"
  ];

  int currentHotel = 0;

  // Choose a Random Hotel
  void updateHotel() {
    setState(() {
      currentHotel = Random().nextInt(hotels.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text(
            'Hotel Picker',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Where do you want to eat?',
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                hotels[currentHotel],
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  updateHotel();
                },
                child: const Text("choose a hotel"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
