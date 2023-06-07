import 'package:flutter/material.dart';
import 'package:reactiv/reactiv.dart';

class AlldataController extends ReactiveController {
  final sliderValue = 120.reactiv;
  final weightIndex = 60.reactiv;
  final ageIndex = 20.reactiv;

  Reactive activeColor = Reactive(Colors.blueAccent);
  Reactive inactiveColor = Reactive(Color.fromARGB(45, 179, 48, 90));

  Reactive malecardColor = Reactive(Color.fromARGB(45, 179, 48, 90));
  Reactive femalecardColor = Reactive(Color.fromARGB(45, 179, 48, 90));


}
