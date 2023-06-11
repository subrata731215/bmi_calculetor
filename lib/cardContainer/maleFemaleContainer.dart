import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class MaleFemaleContainer extends ReactiveWidget<AlldataController> {
  MaleFemaleContainer(
      {required this.icon,
      required this.title,
      required this.onp,
      required this.backgroundColor});

  IconData icon;
  String title;
  VoidCallback onp;
  Color backgroundColor;

  @override
  AlldataController bindController() {
    return AlldataController();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onp,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60,
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
