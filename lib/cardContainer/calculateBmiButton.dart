import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import '../main.dart';

class CalculateBmiButton extends ReactiveWidget<AlldataController> {
  @override
  AlldataController bindController() {
    return AlldataController();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
      ),
      onPressed: () {
        controller.calculateBmi();
        Navigator.pushNamed(context, Routes.resultPage);
      },
      child: const Center(
          child: Text(
        'Calculate BMI',
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}
