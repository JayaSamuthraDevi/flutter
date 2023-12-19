import 'package:flutter/material.dart';
import 'package:project1/pages/about_page.dart';
import 'package:project1/pages/contact_page.dart';
import 'package:project1/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/home_page':(context) =>  const HomePage(),
        '/about_page':(context) =>  const AboutPage(),
        '/contact_page':(context) =>  const ContactPage(),
      },
    );
  }
}

