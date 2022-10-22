import 'package:echelon_talent_app/constants/colors.dart';
import 'package:echelon_talent_app/screens/more_details/more_details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Echelon Talent App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: white
      ),
      home: const MoreDetailsScreen(),
    );
  }
}
