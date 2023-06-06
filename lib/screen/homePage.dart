import 'package:bmi_calculator_reactiv/calculatePage.dart';
import 'package:bmi_calculator_reactiv/cardContainer/heightContainer.dart';
import 'package:bmi_calculator_reactiv/cardContainer/maleFemaleContainer.dart';
import 'package:bmi_calculator_reactiv/cardContainer/weightAgeContainer.dart';
import 'package:bmi_calculator_reactiv/controller.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_reactiv/constants.dart';
import 'package:reactiv/reactiv.dart';

class HomePage extends ReactiveWidget<AlldataController> {
  @override
  AlldataController bindController() {
    return AlldataController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    MaleFemaleContainer(
                      icon: Icons.male,
                      title: 'Male',
                    ),
                    sizedBox,
                    MaleFemaleContainer(
                      icon: Icons.female,
                      title: 'FeMale',
                    ),
                  ],
                ),
                sizedBox,
                HeightContainer(),
                sizedBox,
                Row(
                  children: [
                    Observer(
                      listenable: controller.weightIndex,
                      listener: (weight) {
                        return WeightAgeContainer(
                          title: 'Weight',
                          weightAge: weight,
                          baseLineText: 'Kg',
                          deCreseOnp: () {
                            controller.weightIndex.value--;
                          },
                          inCreaseOnp: () {
                            controller.weightIndex.value++;
                          },
                        );
                      },
                    ),
                    sizedBox,
                    Observer(
                        listenable: controller.ageIndex,
                        listener: (age) {
                          return WeightAgeContainer(
                              title: 'Age',
                              weightAge: age,
                              baseLineText: 'years',
                              deCreseOnp: () {
                                controller.ageIndex.value--;
                              },
                              inCreaseOnp: () {
                                controller.ageIndex.value++;
                              });
                        })
                  ],
                ),
              ],
            ),
          ),
          CalCulateBmi(),
        ],
      ),
    );
  }
}
