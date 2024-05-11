// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String text;
  final String sectionName;
  final void Function()? onPressed;

  const MyTextBox({
    super.key,
    required this.text,
    required this.sectionName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.brown[100], borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.only(
        left: 15,
        bottom: 15,
      ),
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //section name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //section name
              Text(
                sectionName,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),

              //edit button
              IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.settings),
              ),
            ],
          ),

          //text
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
