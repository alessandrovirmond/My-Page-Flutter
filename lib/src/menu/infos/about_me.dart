import 'package:flutter/material.dart';
import 'package:my_page_flutter/src/style/color.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
        final double wd = MediaQuery.of(context).size.width;
    final double hg = MediaQuery.of(context).size.height;
    return Container(
      width: wd/2,
      height: hg/2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sobre mim"),
          backgroundColor: PalleteColor.theme,
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(color: PalleteColor.theme)
                  )
                ),
                child: Column(
                  children: [
                    Expanded(child: Container()),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
      
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Container()),
              
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
