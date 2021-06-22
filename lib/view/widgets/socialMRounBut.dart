import 'package:flutter/material.dart';
import 'package:stock_details/view/constants/colors.dart';

Widget socialMediaButton({required Widget icon}) {
  return Container(
    height: 50,
    width: 150,
    child: RaisedButton(
      textColor: Colors.white,
      color: primaryPurple,
      child: icon,
      onPressed: () {},
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
    ),
  );
}
