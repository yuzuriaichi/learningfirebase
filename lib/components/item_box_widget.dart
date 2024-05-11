// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ItemBoxWidget extends StatelessWidget {
  final String textInSquare;
  final IconData iconData;
  final Color textColor;

  const ItemBoxWidget({
    super.key,
    required this.textInSquare,
    required this.iconData,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFA77D54),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(
                0,
                2,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(25),
          shape: BoxShape.rectangle,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
                bottom: 25.0,
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  iconData,
                  color: Colors.red, // Change color as needed
                  size: 25, // Change size as needed
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                  left: 10.0,
                ),
                child: Text(
                  textInSquare,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12, // Change size as needed
                    fontWeight: FontWeight.bold, // Change weight as needed
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
