import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp()); //the same as before

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // 'TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Whats\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'Whats\'s yout favorite anime?',
      'answers': ['Black Clower', 'Tokyo Ghoul', 'Dororo', 'DxD'],
    },
    {
      'questionText': 'Whats\'s yout favorite animal?',
      'answers': ['Dog', 'Cat', 'Tiger', 'Rabbit'],
    },
    {
      'questionText': 'Whats\'s yout favorite opening?',
      'answers': ['Donmenkano', 'Tokyo Ghoul', 'Yahari'],
    },
    //'Whats\'s your favorite color?' //changed
  ]; //will be used in "children: <Widget>[]"
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    // if (_questionIndex == questions.length) {
    //   print('We have no more questions!');
    //   _questionIndex -= 4;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('Hello!'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // body: Text('This is my default text!'),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                    //_questions.elementAt(_questionIndex), "_questions[_questionIndex]"
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                  /*RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'), //read only here
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),*/
                ],
              )
            : Center(
                child: Text(
                    'Thanks for ur collaboration we will take kare about u'),
              ),
      ),
    );
  }
}
