import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final VoidCallback resetHandler;

  Reset(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        mini: false,
        clipBehavior: Clip.none,
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.grey[200],
        elevation: 5,
        onPressed: resetHandler,
        child: const Icon(Icons.restore),
      ),
    );
  }
}
