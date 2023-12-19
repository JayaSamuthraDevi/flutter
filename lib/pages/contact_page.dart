// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/components/my_accordion.dart';
import 'package:project1/components/my_drawer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      drawer: MyDrawer(),
      body: Container(
        child: Column(
          children: [
            MyAccordion(
              titleString: 'title 1',
              description: 'qwerss tyuif oasaljdkd sdjh',
            ),
            SizedBox(height: 20),
            MyAccordion(
              titleString: 'title 2',
              description: 'qwerss tyuif cssccs scsc css scs scs cs sc soasaljdkd sdjh',
            ),
          ],
        ),
      ),
    );
  }
}
