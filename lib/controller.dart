import 'dart:math';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class AlldataController extends ReactiveController {
  TextEditingController textEditingController = TextEditingController();

  final sliderValue = 160.reactiv;
  final weightIndex = 60.reactiv;
  final ageIndex = 25.reactiv;
  double _bmi = 0;


  final activeColor = Reactive(Colors.blueAccent);
  final inactiveColor = Reactive(const Color.fromARGB(45, 179, 48, 90));

  final maleCardColor = Reactive(const Color.fromARGB(45, 179, 48, 90));
  final femaleCardColor = Reactive(const Color.fromARGB(45, 179, 48, 90));

  updateColor(String gender) {
    if (gender == 'Male') {
      if (maleCardColor.value == inactiveColor.value) {
        maleCardColor.value = activeColor.value;
        femaleCardColor.value = inactiveColor.value;
      }else {
        maleCardColor.value = inactiveColor.value;
      }
    }
    if (gender == 'Female') {
      if (femaleCardColor.value == inactiveColor.value) {
        femaleCardColor.value = activeColor.value;
        maleCardColor.value = inactiveColor.value;
      } else {
        femaleCardColor.value = inactiveColor.value;
      }
    }
  }

  double calculateBmi() {
    _bmi = (weightIndex.value / pow(sliderValue.value / 100, 2));
    return _bmi;
  }

  String getResult() {
    if (_bmi > 25.1) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getDescription() {
    if (_bmi > 25.1) {
      return 'You have higher than normal body Weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have normal body Weight. Good Job!!';
    } else {
      return 'You have lower than normal body weight. You can Eat More';
    }
  }

  Color getColor() {
    if (_bmi > 25.1) {
      return Colors.red;
    } else if (_bmi > 18.5) {
      return Colors.green;
    } else {
      return Colors.yellow;
    }
  }
}
