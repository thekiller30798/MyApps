import 'package:flutter/material.dart';
import 'package:bmi/components/constans.dart';


class IconContent extends StatelessWidget {
  IconContent({required this.iconChange,required this.textChange,required this.iconColor});
  final IconData iconChange;
  final String textChange;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconChange, size: 70,color: iconColor,),
        SizedBox(
          height: 15.0,
        ),
        Text(textChange,
          style: TextStyle(
              fontSize: 18.0, color: iconColor),
        )
      ],
    );
  }
}