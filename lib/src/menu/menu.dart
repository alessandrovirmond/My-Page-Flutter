import 'package:flutter/material.dart';
import 'package:my_page_flutter/src/menu/controller/menu_switch.dart';
import 'package:my_page_flutter/src/style/color.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIconIndex = 0;

  /// Função que lida com a seleção de ícones e muda o estado
  void onIconTap(int index) {
    setState(() {
      selectedIconIndex = index;
    });

    MenuSwitch.setWidget(index);
  }

  @override
  Widget build(BuildContext context) {
    final double wd = MediaQuery.of(context).size.width;

    return  AnimatedContainer(
        duration: const Duration(milliseconds: 300),
      height: 50,
      width: wd / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        border: Border.all(color: PalleteColor.theme),
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /// Ícone 1
          GestureDetector(
            onTap: () => onIconTap(1),
            child:  AnimatedContainer(
                duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIconIndex == 1
                    ?  PalleteColor.theme
                    : Colors.transparent,
              ),
              child: Icon(
                Icons.abc,
                color: selectedIconIndex == 1
                    ? Colors.white
                    : PalleteColor.theme,
              ),
            ),
          ),

          /// Ícone 2
          GestureDetector(
            onTap: () => onIconTap(2),
            child:  AnimatedContainer(
                duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIconIndex == 2
                    ? PalleteColor.theme
                    : Colors.transparent, 
              ),
              child: Icon(
                Icons.tag,
                color: selectedIconIndex == 2
                    ? Colors.white
                    : PalleteColor.theme, 
              ),
            ),
          ),

          /// Ícone 3
          GestureDetector(
            onTap: () => onIconTap(3),
            child:  AnimatedContainer(
                duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIconIndex == 3
                    ? PalleteColor.theme
                    : Colors.transparent, 
              ),
              child: Icon(
                Icons.cabin,
                color: selectedIconIndex == 3
                    ? Colors.white
                    : PalleteColor.theme, // Cor do ícone
              ),
            ),
          ),
        ],
      ),
    );
  }
}
