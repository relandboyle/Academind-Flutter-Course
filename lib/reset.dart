import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final VoidCallback selectHandler;

  Reset(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        mini: false,
        clipBehavior: Clip.none,
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.grey[200],
        elevation: 5,
        onPressed: selectHandler,
        child: const Icon(Icons.restore),
      ),
    );
  }
}
