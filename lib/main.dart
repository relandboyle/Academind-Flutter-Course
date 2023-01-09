import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
import './reset.dart';
import 'c-text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 20},
        {'text': 'Max', 'score': 30},
        {'text': 'Max', 'score': 40},
        {'text': 'Max', 'score': 50},
        {'text': 'Max', 'score': 60},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  var _inputText = 'The Quick Brown Fox Jumps Over the Lazy Dog';

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print('Reset!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'FiraCode',
          ),
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore),
            CText(_inputText),
          ],
        ),
        floatingActionButton: Reset(_reset),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
