import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You scored ${totalScore} points!',
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
