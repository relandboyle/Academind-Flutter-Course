import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  final String inputText;

  CText(this.inputText);

  @override
  Widget build(BuildContext context) {
    return Text(
      inputText,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey[800],
        backgroundColor: Colors.blueGrey[200],
        fontSize: 28,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        fontFamily: 'FiraCode',
      ),
    );
  }
}
