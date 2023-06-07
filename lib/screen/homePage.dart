import 'package:bmi_calculator_reactiv/cardContainer/calculateBmiButton.dart';
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
      appBar: AppBar(
        title: const Text('Bmi CalCulator'),
        centerTitle: true,
        leading: const Icon(
          Icons.filter_list,
          size: 30,
        ),
      ),
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
                    Observer2(
                      listenable: controller.malecardColor,
                      listenable2: controller.activeColor,
                      listener: (maleColor, activeColor) {
                        return MaleFemaleContainer(
                          icon: Icons.male,
                          title: 'Male',
                          backgroundColor: maleColor,
                          onp: () {
                            if (maleColor ==
                                controller.malecardColor.value) {
                              controller.malecardColor.value = activeColor;

                              controller.femalecardColor.value =
                                  controller.inactiveColor.value;
                            }
                          },
                        );
                      },
                    ),
                    sizedBox,
                    Observer2(
                        listenable: controller.femalecardColor,
                        listenable2: controller.activeColor,
                        listener: (femaleCardColor, activeColor) {
                          return MaleFemaleContainer(
                            icon: Icons.female,
                            title: 'FeMale',
                            backgroundColor: femaleCardColor,
                            onp: () {
                              if (femaleCardColor ==
                                  controller.femalecardColor.value) {
                                controller.femalecardColor.value = activeColor;
                                controller.malecardColor.value =
                                    controller.inactiveColor.value;
                              }
                            },
                          );
                        }),
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
          CalculateBmiButton(),
        ],
      ),
    );
  }
}
