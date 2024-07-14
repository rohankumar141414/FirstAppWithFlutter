import 'package:first_app/statefull_widget.dart';
import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';

class MyWidget extends StatelessWidget {
  final Color col1, col2;
  const MyWidget(this.col1, this.col2, {super.key});

  @override
  Widget build(context) {
    Widget w = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [col1, col2],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
    return w;
  }
}
