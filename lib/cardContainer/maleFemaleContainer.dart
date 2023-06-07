import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class MaleFemaleContainer extends ReactiveWidget<AlldataController> {
  MaleFemaleContainer(
      {required this.icon, required this.title, required this.onp});

  IconData icon;
  String title;
  VoidCallback onp;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Observer(
            listenable: controller.activeColor,
            listener: (color) {
              return ElevatedButton(
                onPressed: onp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  padding: const EdgeInsets.all(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      title,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              );
            }));
  }
}
