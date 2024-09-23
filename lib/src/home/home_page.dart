import 'package:flutter/material.dart';
import 'package:my_page_flutter/src/menu/controller/menu_switch.dart';
import 'package:my_page_flutter/src/menu/menu.dart';
import 'package:my_page_flutter/src/person/person.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double wd = MediaQuery.of(context).size.width;
    final double hg = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          /// BACKGROUND IMAGE
          SizedBox(
            width: wd,
            height: hg,
            child: Image.asset(
              "asset/background.jpg",
              fit: BoxFit.cover,
            ),
          ),

          /// WIDGET PERSON
          Align(
            alignment: Alignment.topCenter, // Centraliza horizontalmente no topo
            child: Padding(
              padding: const EdgeInsets.only(top: 15), // Espaçamento superior
              child: Person(),
            ),
          ),

          /// LISTENER PARA O WIDGET ATUAL DO MENU SWITCH
          Align(
            alignment: Alignment.center, // Centraliza horizontalmente no meio
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: ValueListenableBuilder<Widget>(
                valueListenable: MenuSwitch.currentWidget, // Escuta mudanças
                builder: (context, widget, _) {
                  return widget;
                },
              ),
            ),
          ),

          /// WIDGET MENU
          Align(
            alignment: Alignment.bottomCenter, // Centraliza horizontalmente no rodapé
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15), // Espaçamento inferior
              child: Menu(),
            ),
          ),
        ],
      ),
    );
  }
}
