import 'dart:async';

import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  bool rules = false;
  bool selectSec1 = false,
      selectSec2 = false,
      selectSec3 = false,
      selectSec4 = false,
      selectSec5 = false;
  bool start = false;
  int seconds = 0, presentScore = 0, showSec = 0;
  double highScore = 0;
  bool showScore = true, highScoreText = false;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
    highScoreConverted();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          timer.cancel();
          setState(() {
            start = false;
            showScore = true;
          });
          if (seconds == 0) {
            setState(() {
              highScore = highScoreConverted();
            });
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        centerTitle: true,
        title: const Text(
          'Tap It',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                rules = true;
              });
            },
            icon: const Icon(Icons.question_mark_rounded),
            style: const ButtonStyle(animationDuration: Duration(seconds: 3)),
          )
        ],
        elevation: 10.0,
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        'High Score : $highScore',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  selectSec1 = true;
                                  seconds = 3;
                                  showSec = 3;
                                  presentScore = 0;
                                  selectSec2 = false;
                                  selectSec3 = false;
                                  selectSec4 = false;
                                  selectSec5 = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: selectSec1 ? Colors.white : null,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  '3s',
                                  style: TextStyle(
                                    color: selectSec1
                                        ? Colors.indigo
                                        : Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  selectSec2 = true;
                                  seconds = 5;
                                  showSec = 5;
                                  presentScore = 0;
                                  selectSec1 = false;
                                  selectSec3 = false;
                                  selectSec4 = false;
                                  selectSec5 = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: selectSec2 ? Colors.white : null,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  '5s',
                                  style: TextStyle(
                                    color: selectSec2
                                        ? Colors.indigo
                                        : Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  selectSec3 = true;
                                  seconds = 7;
                                  showSec = 7;
                                  presentScore = 0;
                                  selectSec1 = false;
                                  selectSec2 = false;
                                  selectSec4 = false;
                                  selectSec5 = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: selectSec3 ? Colors.white : null,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  '7s',
                                  style: TextStyle(
                                    color: selectSec3
                                        ? Colors.indigo
                                        : Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  selectSec4 = true;
                                  seconds = 10;
                                  showSec = 10;
                                  presentScore = 0;
                                  selectSec1 = false;
                                  selectSec2 = false;
                                  selectSec3 = false;
                                  selectSec5 = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: selectSec4 ? Colors.white : null,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  '10s',
                                  style: TextStyle(
                                    color: selectSec4
                                        ? Colors.indigo
                                        : Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onDoubleTap: () {
                                setState(() {
                                  selectSec5 = true;
                                  seconds = 15;
                                  showSec = 15;
                                  presentScore = 0;
                                  selectSec1 = false;
                                  selectSec2 = false;
                                  selectSec3 = false;
                                  selectSec4 = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 35.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  color: selectSec5 ? Colors.white : null,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  '15s',
                                  style: TextStyle(
                                    color: selectSec5
                                        ? Colors.indigo
                                        : Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Card(
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  padding: const EdgeInsets.only(top: 7.0),
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade500,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Seconds',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        seconds.toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  padding: const EdgeInsets.only(top: 7.0),
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade500,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Score',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Text(
                                        presentScore.toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              right: 20,
                              left: 20,
                              bottom: 20,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  start ? presentScore++ : null;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * 0.335,
                                width: MediaQuery.of(context).size.width * 0.69,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          presentScore = 0;
                        });
                        if (start) {
                          setState(() {
                            seconds = 0;
                          });
                        } else if (seconds != 0) {
                          setState(() {
                            start = true;
                          });
                          startTimer();
                        } else {
                          setState(() {
                            selectSec1 = true;
                            seconds = 3;
                            showSec = 3;
                            presentScore = 0;
                            selectSec2 = false;
                            selectSec3 = false;
                            selectSec4 = false;
                            selectSec5 = false;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo.shade500,
                      ),
                      child: Text(
                        start ? 'stop' : 'Let\'s Start',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (showScore)
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: (MediaQuery.of(context).size.height) * 0.25,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  if (highScore <= 0)
                    const Padding(
                      padding: EdgeInsets.all(35.0),
                      child: Text(
                        'Welcome YOU..!',
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  if (highScore > 0)
                    if (highScoreText)
                      Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Text(
                          'High Score : $presentScore',
                          style: const TextStyle(
                            color: Colors.indigo,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                  if (highScore > 0)
                    if (!highScoreText)
                      Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Text(
                          'Your Score : $presentScore',
                          style: const TextStyle(
                            color: Colors.indigo,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo),
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showScore = false;
                            highScoreText = false;
                            presentScore = 0;
                            seconds = showSec = 3;
                            selectSec1 = true;
                            selectSec2 = false;
                            selectSec3 = false;
                            selectSec4 = false;
                            selectSec5 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo),
                        child: const Text(
                          'Play',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
        ],
      ),
    );
  }

  double highScoreConverted() {
    double averageScore = 0;
    averageScore = presentScore / showSec;
    if (highScore < averageScore) {
      setState(() {
        highScoreText = true;
      });
      averageScore = (averageScore * 10).roundToDouble() / 10;
      return averageScore;
    }
    return highScore;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
