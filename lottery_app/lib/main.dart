import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const LotteryApp());
}

class LotteryApp extends StatefulWidget {
  const LotteryApp({Key? key}) : super(key: key);

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Lottery Winning Number is 10'),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: x == 4
                    ? Column(
                        children: const [
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.done_all,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Congratulation \n You Won',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Better luck next time Your Number is $x \n Try Again',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(12);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
