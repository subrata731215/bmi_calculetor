import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class AlldataController extends ReactiveController {
  final sliderValue = ReactiveInt(120);
  final weightIndex = 60.reactiv;
  final ageIndex = 25.reactiv;
  late double _bmi;

  @override
  void onInit() {
    _bmi = (weightIndex.value / pow(sliderValue.value / 100, 2));
    super.onInit();
  }

  final activeColor = Reactive(Colors.blueAccent);
  final inactiveColor = Reactive(Color.fromARGB(45, 179, 48, 90));

  final malecardColor = Reactive(Color.fromARGB(45, 179, 48, 90));
  final femalecardColor = Reactive(Color.fromARGB(45, 179, 48, 90));

  double calculateBmi() {
    _bmi = (weightIndex.value / pow(sliderValue.value / 100, 2));
    return _bmi;
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'You have higher than normal body Weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have normal body Weight. Good Job!!';
    } else {
      return 'You have lower than normal body weight. You can Eat More';
    }
  }
}
