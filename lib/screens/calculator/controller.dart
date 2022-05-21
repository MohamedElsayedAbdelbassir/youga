import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CalculatorController {
  var num1Controller = TextEditingController();
  var num2Controller = TextEditingController();
  var operatorController = TextEditingController();
  double result = 0;

  calculatorController() {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    String op = operatorController.text;
    switch (op) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '/':
        result = num1 / num2;
        break;
      case '*':
        result = num1 * num2;
        break;

      default:
        print('invaild number');
    }
    print(result);
  }
}
