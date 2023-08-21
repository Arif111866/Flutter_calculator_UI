import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      // theme: ThemeData(primarySwatch: Colors.black87),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121), // Dark background color
      appBar: AppBar(title: Text('My iPhone Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Text(
                'Inputn  // Display the ongoing calculation or result here
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: 'C'),
                CalculatorButton(text: 'M-'),
                CalculatorButton(text: '%'),
                CalculatorButton(text: '÷')
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '7'),
                CalculatorButton(text: '8'),
                CalculatorButton(text: '9'),
                CalculatorButton(text: '*'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '4'),
                CalculatorButton(text: '5'),
                CalculatorButton(text: '6'),
                CalculatorButton(text: '-'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '1'),
                CalculatorButton(text: '2'),
                CalculatorButton(text: '3'),
                CalculatorButton(text: '+'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: '0'),
                CalculatorButton(text: '.'),
                CalculatorButton(text: '='),
                CalculatorButton(text: 'AC')
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


  const CalculatorButton({required this.text,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white30 , // Dark gray button color
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
