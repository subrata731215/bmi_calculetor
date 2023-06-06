import 'package:bmi_calculator_reactiv/constants.dart';
import 'package:flutter/material.dart';

class CalCulateBmi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      width: double.infinity,
      child: const Center(
          child: Text(
        'Calculate BMI',
        style: TextStyle(fontSize: 20, color: Colors.white),
      )),
    );
  }
}
