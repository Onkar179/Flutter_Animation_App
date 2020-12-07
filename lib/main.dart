import 'package:animation_app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
