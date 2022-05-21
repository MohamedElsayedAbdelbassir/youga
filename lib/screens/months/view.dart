import 'dart:js';

import 'package:flutter/material.dart';
import 'package:youga/screens/months/controller.dart';

class MonthName extends StatefulWidget {
  const MonthName({Key? key}) : super(key: key);

  @override
  State<MonthName> createState() => _MonthNameState();
}

class _MonthNameState extends State<MonthName> {
  var controller = MonthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Months'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextFormField(
              controller: controller.numController,
              decoration: InputDecoration(labelText: 'Month Number'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                controller.getMonth();

                setState(() {});
              },
              child: Text(
                'Get Month Name',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(controller.monthName),
          ],
        ),
      ),
    );
  }
}
