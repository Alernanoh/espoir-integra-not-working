import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetFontAwesome {
  static getFontAwesomeList(argKey) {
    const Map<String, IconData> iconsFontAwesome = {
      'circle': FontAwesomeIcons.circle,
      //Drawer
      'userCheck': FontAwesomeIcons.userCheck,
      'magnifying-glass-dollar': FontAwesomeIcons.magnifyingGlassDollar,
      'user-pen': FontAwesomeIcons.userPen,
      'people-group': FontAwesomeIcons.peopleGroup
    };
    return iconsFontAwesome.containsKey(argKey) ? iconsFontAwesome[argKey] : iconsFontAwesome['circle'];
  }
}
