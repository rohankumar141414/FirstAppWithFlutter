import 'package:flutter/material.dart';
import 'package:first_app/my_widget.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyWidget( Color.fromRGBO(1, 35, 46, 0.8),
           Color.fromRGBO(1, 59, 95, 0.8)),
      ),
    ),
  );
}
