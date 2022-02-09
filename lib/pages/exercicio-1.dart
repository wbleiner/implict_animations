import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({Key? key}) : super(key: key);

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {
  final _duration = const Duration(seconds: 1);
  bool isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercicio 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedAlign(
          duration: _duration,
          alignment: isAnimated ? Alignment.topCenter : Alignment.bottomRight,
          child: GestureDetector(
            onTap: (() {
              setState(() {
                isAnimated = !isAnimated;
              });
            }),
            child: AnimatedContainer(
              duration: _duration,
              decoration: BoxDecoration(
                borderRadius: isAnimated
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(50),
                color: Colors.blue,
              ),
              width: isAnimated ? 150 : 60,
              height: 60,
            ),
          ),
        ),
      ),
    );
  }
}
