import 'package:flutter/material.dart';
import 'package:my_page_flutter/src/menu/infos/about_me.dart';

class MenuSwitch {
  /// ValueNotifier que notificará a UI quando o widget for atualizado
  static ValueNotifier<Widget> currentWidget = ValueNotifier<Widget>(
    Container(
      height: 100,
      width: 100,
      color: Colors.white,
    ),
  );

  /// Função que define diferentes widgets com base no número passado
  static void setWidget(int index) {
    switch (index) {
      case 1:
        currentWidget.value = 
        AboutMe();
        break;
      case 2:
        currentWidget.value = Container(
          height: 100,
          width: 100,
          color: Colors.black,
        );
        break;
      case 3:
        currentWidget.value = Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        );
        break;
      default:
        currentWidget.value = Container(
          height: 100,
          width: 100,
          color: Colors.white,
        );
        break;
    }
  }
}
