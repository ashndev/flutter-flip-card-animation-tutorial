import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late FlipCardController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(172, 81, 187, 177),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlipCard(
                controller: _controller,
                back: const Image(
                  image: AssetImage('assets/images/coin-back.png'),
                  width: 200,
                ),
                front: const Image(
                  image: AssetImage('assets/images/coin-front.png'),
                  width: 200,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {
                  if (!_controller.state!.isFront) {
                    _controller.toggleCard();
                  }
                },
                icon: const Icon(Icons.threesixty_rounded),
                iconSize: 70,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}