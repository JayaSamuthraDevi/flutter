import 'package:flutter/cupertino.dart';

class Space extends StatelessWidget {
  final double inputHeight;

  const Space({Key? key, required this.inputHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: inputHeight,
    );
  }
}