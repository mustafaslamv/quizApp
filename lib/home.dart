import 'package:flutter/material.dart';
import 'package:quizapp/question_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text(
            'Quiz app',
            style: TextStyle(color: Colors.grey.shade900),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.assignment,
                size: 180,
                color: Colors.grey.shade200,
              ),
              Container(
                child: Text(
                  'Welcome to this simple quiz',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 15.0,
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 250.0),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionScreen(0),
                      ),
                  );
                },
                child: Container(
                  width: 250.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Start',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
