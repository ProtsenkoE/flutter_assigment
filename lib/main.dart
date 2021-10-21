import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 2_1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: SizedBox(
              height: 200.0,
              width: 200.0,
              child: Row(
                children: [
                  Column(
                    children: const [
                      TopBox(),
                      InnerBox(),
                      InnerBox(),
                      BottomLeftBox(),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: const [
                          ArcBox(),
                        ],
                      ),
                      Row(
                        children: const [
                          InnerBox(),
                          InnerBox(),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      TopBox(),
                      InnerBox(),
                      InnerBox(),
                      BottomRightBox(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InnerBox extends StatelessWidget {
  const InnerBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: Colors.green,
    );
  }
}

class TopBox extends StatelessWidget {
  const TopBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
      ),
    );
  }
}

class BottomLeftBox extends StatelessWidget {
  const BottomLeftBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
        ),
      ),
    );
  }
}

class BottomRightBox extends StatelessWidget {
  const BottomRightBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40.0),
        ),
      ),
    );
  }
}

class ArcBox extends StatelessWidget {
  const ArcBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Transform.rotate(
        angle: 3.14,
        child: ClipPath(
          clipper: ArcClipper(),
          child: Container(
            height: 10.0,
            width: 100.0,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
