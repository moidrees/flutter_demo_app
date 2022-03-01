import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

class FlyingBirdsPage extends StatelessWidget {
  const FlyingBirdsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(child: FlyingBirds()),
    );
  }
}

class FlyingBirds extends StatefulWidget {
  const FlyingBirds({Key? key}) : super(key: key);

  @override
  _FlyingBirdsState createState() => _FlyingBirdsState();
}

class _FlyingBirdsState extends State<FlyingBirds> {
  int flyImageNumber = 1;

  Timer ?_timer = null;
  int _start = 1;
  bool flag = false;
  int count = 1;
  String title = 'Start';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/fly/fly$count.png'),
        TextButton(
            onPressed: () async {
              if(flag) {
                flag = false;
                title = 'Start';
              } else {
                flag = true;
                title = 'Pause';

                while(flag) {
                  await new Future.delayed(const Duration(milliseconds : 100));
                  setState(() {
                    count++;
                    if(count == 54)
                      count = 0;
                  });
                }
              }
              //performFlyAction();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            child: Text('$title', style: TextStyle(color: Colors.white),))
      ],
    );
  }

  void performFlyAction() {
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start++;
            flyImageNumber = _start;
            if(flyImageNumber == 54) {
              _start = 1;
            }
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }
}
