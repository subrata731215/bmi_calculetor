import 'package:flutter/material.dart';

import '../constants.dart';

class HeightContainer extends StatelessWidget {
  double value = 30;

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
                '${value.toInt()}',
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
          Slider(
            max: 70,
            min: 20,
            value: value,
            onChanged: (newValue) {
              newValue = value;
            },
          ),
        ],
      ),
    );
  }
}
