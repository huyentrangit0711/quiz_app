import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: 
        Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', 
        width: 300,
        color: Color.fromARGB(150, 255, 255, 255),
        )
        ,
        const SizedBox(height: 80),
        StyledText('Learn Flutter the fun way!'),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              iconColor: Colors.amber
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'))
      ],
    )
    );
  }
}
