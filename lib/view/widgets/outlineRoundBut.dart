import 'package:flutter/material.dart';
import 'package:stock_details/view/constants/colors.dart';

Widget outlineButton({required String label}) {
  return Container(
    height: 50,
    width: 275,
    child: OutlinedButton(
      onPressed: () {},
      child: Text(label, style: TextStyle(color: primaryPurple)),
      style: OutlinedButton.styleFrom(
        //backgroundColor:primaryPurple,
        side: BorderSide(width: 2.0, color: primaryPurple),
        shape: StadiumBorder(),
      ),
    ),
  );
}
