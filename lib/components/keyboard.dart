import 'package:calculadora__flutter/components/button.dart';
import 'package:calculadora__flutter/components/button_row.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard(this.cb);

  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow([
            Button.big(text: 'AC', cb: cb, color: Button.DARK),
            Button(text: '%', cb: cb, color: Button.DARK),
            Button.operation(text: '/', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: 'x', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button.big(text: '0', cb: cb),
            Button(text: '.', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
