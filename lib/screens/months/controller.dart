import 'package:flutter/cupertino.dart';

class MonthController {
  var numController = TextEditingController();
  String monthName = '';

  getMonth() {
    int numMonth = int.parse(numController.text);
    switch (numMonth) {
      case 1:
        monthName = 'Junary';
        break;
      case 2:
        monthName = 'Febrary';
        break;
      case 3:
        monthName = 'Mars';
        break;
      case 4:
        monthName = 'Epril';
        break;
      case 5:
        monthName = 'May';
        break;
      case 6:
        monthName = 'June';
        break;
      case 7:
        monthName = 'July';
        break;
      case 8:
        monthName = 'August';
        break;
      case 9:
        monthName = 'September';
        break;
      case 10:
        monthName = 'October';
        break;
      case 11:
        monthName = 'November';
        break;
      case 12:
        monthName = 'December';
        break;
      default:
        print('invaild number');
    }
    print(monthName);
  }
}
