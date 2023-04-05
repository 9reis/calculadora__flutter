import 'package:calculadora__flutter/components/display.dart';
import 'package:calculadora__flutter/components/keyboard.dart';
import 'package:calculadora__flutter/models/memory.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Display(memory.value),
          KeyBoard(_onPressed),
        ],
      ),
    );
  }
}
