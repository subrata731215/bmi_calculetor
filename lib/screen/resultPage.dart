import 'package:bmi_calculator_reactiv/constants.dart';
import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:bmi_calculator_reactiv/main.dart';

class ResultPage extends ReactiveWidget<AlldataController> {
  @override
  AlldataController bindController() {
    return AlldataController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI RESULT'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 18.0),
            child: Text(
              'Your Result',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                width: double.infinity,
                color: containerColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Observer(
                      listenable: controller.getResult().reactiv,
                      listener: (result) {
                        return Text(result.reactiv.value,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40));
                      },
                    ),
                    Observer(
                        listenable: controller
                            .calculateBmi()
                            .toStringAsFixed(1)
                            .reactiv,
                        listener: (bmiResult) {
                          return Text(bmiResult.reactiv.value,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 90));
                        }),
                    Observer(
                      listenable: controller.getDescription().reactiv,
                      listener: (description) {
                        return Text(description.reactiv.value,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: containerColor),
              onPressed: () {
                Navigator.pushNamed(context, Routes.homePage);
              },
              child: const Text(
                'Re-Calculate',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
