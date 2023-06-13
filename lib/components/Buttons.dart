// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'constans.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({required this.onTap, required this.buttonTiltle,this.onLongTap});
  final VoidCallback onTap;
  final VoidCallback? onLongTap;
  final String buttonTiltle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongTap,
      onTap:
        onTap,

      child: Container(
        child: Center(
            child: Text(
              buttonTiltle,
              style: TextStyle(
                  color: Color(0xFF27374D),
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            )),
        color: Color(colorOfButtom),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}

class RoundIconShape extends StatelessWidget {
  RoundIconShape({required this.icon, required this.onPressed,required this.onLongPressed});

  final IconData icon;
  final VoidCallback onPressed;
  final VoidCallback onLongPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 10.0,
      constraints: BoxConstraints.tightFor(
        width: 54.0,
        height: 54.0,
      ),
      shape:
      ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      fillColor: Color(0xFF99A98F),
      onPressed: onPressed,
      onLongPress: onLongPressed,

      child: Icon(icon),
    );
  }
}