import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';
import 'package:bmi_calculator_reactiv/main.dart';

class ResultPage extends ReactiveWidget<AlldataController> {
  const ResultPage({super.key});

  @override
  AlldataController bindController() {
    return AlldataController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${controller.textEditingController.text} \'s Bmi Result',
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 40, bottom: 40),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color:      controller.getColor(),

                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(controller.getResult(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.black)),
                        Text(
                            controller
                                .calculateBmi()
                                .toStringAsFixed(1)
                                .toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 90)),
                        Text(controller.getDescription(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.homePage);
                    },
                    child: const Text(
                      'Re-Calculate',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
