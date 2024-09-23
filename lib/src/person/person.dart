import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    final double wd = MediaQuery.of(context).size.width;
    final double hg = MediaQuery.of(context).size.height;
    return Column(
      children: [
      Container(
                width: wd/7,
                height: wd/7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      60), 
                  child: Image.asset(
                    "asset/my_photo.png",
                    fit:
                        BoxFit.cover, 
                  ),
                ),
              ),

              
    ],);
  }
}