//Now i'm going to make a custom button for the different action like the comment button, share ...
import 'package:flutter/material.dart';

//the button wil take 3 parameter : the icon , the action title and the color of the icon
Widget actionButton(IconData icon, String actionTitle) {
  return Expanded(
    child: TextButton.icon(

      onPressed: () {},
      icon: Icon(
        icon,
        color: Colors.black,
        size: 19,
      ),

      label: Text(
        actionTitle,
        style: TextStyle(
            color: Colors.black,
            fontSize: 12
        ),
      ),
    ),
  );
}