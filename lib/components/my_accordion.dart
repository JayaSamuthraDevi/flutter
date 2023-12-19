import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MyAccordion extends StatelessWidget {
  final String titleString;
  final String description;

  MyAccordion({
    Key? key,
    required this.titleString,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      collapsedTitleBackgroundColor: Colors.blueGrey,
      title: titleString,
      content: description,
      collapsedIcon: Text('Show'),
      expandedIcon: Text('Hide'),
      textStyle: TextStyle(color: Colors.black),
      contentBackgroundColor: Color.fromARGB(255, 139, 195, 241),
    );
  } 
}
