import 'package:flutter/material.dart';

import '../constants.dart';

class WeightAgeContainer extends StatelessWidget {
  WeightAgeContainer(
      {super.key,
      required this.title,
      required this.weightAge,
      required this.baseLineText,
      required this.deCreseOnp,
      required this.inCreaseOnp});

  String title;
  int weightAge;
  String baseLineText;
  Function()? inCreaseOnp;
  VoidCallback deCreseOnp;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        width: double.infinity,
        color: containerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weightAge.toString(),
                  style: const TextStyle(fontSize: 50, color: Colors.white),
                ),
                sizedBox,
                Text(
                  baseLineText,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                  ),
                  onPressed: deCreseOnp,
                  child: const Icon(
                    Icons.remove,
                    size: 30,
                  ),
                ),
                ElevatedButton(
                  onPressed:inCreaseOnp ,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
