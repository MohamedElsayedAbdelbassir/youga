import 'package:flutter/material.dart';
import 'package:youga/screens/calculator/controller.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<CalculatorScreen> createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorScreen> {
  var calc = CalculatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: calc.num1Controller,
              decoration: InputDecoration(labelText: 'Number1'),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: calc.operatorController,
              decoration: InputDecoration(labelText: 'Operator'),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: calc.num2Controller,
              decoration: InputDecoration(labelText: 'Number2'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                calc.calculatorController();
                setState(() {});
              },
              child: const Text('Calc'),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Text(calc.result.toString()),
          ],
        ),
      ),
    );
  }
}
