import 'package:flutter/material.dart';
import 'package:project1/components/my_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('About Page'),
      ),
    );
  }
}