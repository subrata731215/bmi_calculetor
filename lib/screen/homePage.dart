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
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Bmi CalCulator'),
        centerTitle: true,
        leading: const Icon(
          Icons.filter_list,
          size: 30,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    controller: controller.textEditingController,
                    textAlign: TextAlign.center,
                    textCapitalization: TextCapitalization.sentences,
                    style: const TextStyle(

                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Input Your Name',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                      fillColor: Colors.white,
                      floatingLabelStyle:
                          const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Observer(
                          listenable: controller.maleCardColor,
                          listener: (maleColor) {
                            return MaleFemaleContainer(
                              icon: Icons.man,
                              title: 'Male',
                              backgroundColor: maleColor,
                              onp: () {
                                controller.updateColor('Male');
                              },
                            );
                          },
                        ),
                      ),
                      sizedBox,
                      Expanded(
                        child: Observer(
                            listenable: controller.femaleCardColor,
                            listener: (femaleCardColor) {
                              return MaleFemaleContainer(
                                icon: Icons.woman,
                                title: 'FeMale',
                                backgroundColor: femaleCardColor,
                                onp: () {
                                  controller.updateColor('Female');
                                },
                              );
                            }),
                      ),
                    ],
                  ),
                  HeightContainer(),
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
                  CalculateBmiButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
