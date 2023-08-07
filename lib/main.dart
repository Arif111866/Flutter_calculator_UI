import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '123 + 456', // Display the ongoing calculation or result here
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              '579', // Display the current input here
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '7'),
                CalculatorButton(text: '8'),
                CalculatorButton(text: '9'),
                CalculatorButton(text: '÷'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '4'),
                CalculatorButton(text: '5'),
                CalculatorButton(text: '6'),
                CalculatorButton(text: '×'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '1'),
                CalculatorButton(text: '2'),
                CalculatorButton(text: '3'),
                CalculatorButton(text: '-'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '0'),
                CalculatorButton(text: '.'),
                CalculatorButton(text: '='),
                CalculatorButton(text: '+'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;

  const CalculatorButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
