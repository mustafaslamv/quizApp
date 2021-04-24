import 'package:flutter/material.dart';
import 'package:quizapp/quizModel/quiz.dart';
import 'package:quizapp/quizModel/questions.dart';


import 'home.dart';

class QuestionScreen extends StatefulWidget {
  final int index;

  QuestionScreen(this.index);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  Quiz myQuiz = Quiz();
  bool isCorrect = false ;
  bool isWrong = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text('question number : ${widget.index+1}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.grey.shade900,
              ),
              height: 120.0,
              //margin: EdgeInsets.only(top: 80.0, bottom: 200),
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  myQuiz.quiz[widget.index].Qtext,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50.0,
              ),
              visible: isCorrect,
              replacement: Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 50.0,
                ),
                visible: isWrong,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    if(myQuiz.quiz[widget.index].answer == true)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;

                      });
                      else setState(() {
                      isCorrect = false;
                      isWrong = true;

                    });

                  },
                  child: Container(
                    width: 100.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'True',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if(myQuiz.quiz[widget.index].answer == false)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;

                      });
                    else setState(() {
                      isCorrect = false;
                      isWrong = true;

                    });

                  },
                  child: Container(
                    width: 100.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'False',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                if ((widget.index+1) == myQuiz.quiz.length){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );}
                else{Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(widget.index+1),
                  ),
                );}


                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => QuestionScreen(widget.index+1),
                //   ),
                // );
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
                    'Next',
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
    );
  }
}



