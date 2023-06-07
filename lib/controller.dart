import 'dart:ui';

import 'package:reactiv/reactiv.dart';

class AlldataController extends ReactiveController {
  final sliderValue = 120.reactiv;
  final weightIndex = 60.reactiv;
  final ageIndex = 20.reactiv;


  Reactive<Color> activeColor = Reactive(Color(0xff343456));
  Reactive<Color> inactiveColor = Reactive(Color.fromARGB(45, 179, 48, 90));
}
