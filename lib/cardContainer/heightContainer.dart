import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

import '../constants.dart';

class HeightContainer extends ReactiveWidget<AlldataController> {

  var b = AlldataController().sliderValue.value;

  @override
  AlldataController bindController() {
    return AlldataController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      color: containerColor,
      child: Column(
        children: [
          const Text(
            'Height',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          sizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                controller.sliderValue.value.toString(),
                style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              sizedBox,
              const Text(
                'Cm',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ],
          ),
          Observer(
            listenable: controller.sliderValue,
            listener: (newSliderValue) {
              return Slider(
                min: 100,
                max: 200,
                value: newSliderValue.toDouble(),
                onChanged: ( onchangeValue) {
                  print(newSliderValue);
                  newSliderValue =onchangeValue.round();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
