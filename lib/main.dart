import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('anser choosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favrouite colour?',
      'What\'s is your favrouite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(0)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2 choosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('answer 3 choosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
