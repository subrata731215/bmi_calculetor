
import 'package:bmi_calculator_reactiv/constants.dart';
import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import '../main.dart';

class CalculateBmiButton extends ReactiveWidget {
  @override
  AlldataController bindController() {
    return AlldataController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: containerColor,
        ),
        onPressed: () {
          Navigator.pushNamed(context, Routes.resultPage);
        },
        child: const Center(
            child: Text(
          'Calculate BMI',
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
