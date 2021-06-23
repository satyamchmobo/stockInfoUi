import 'package:flutter/material.dart';
import 'package:stock_details/view/constants/colors.dart';
PreferredSize getAppBar({required String pageTitle}){
  return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: AppBar(
          toolbarHeight: 80,
          backgroundColor: primaryPurple,
          flexibleSpace: Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFD6939F),
                  Color(0xFF914BC2),
                ],
              ),
            ),
          ),
          title: Center(
            child: Text(
              pageTitle,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
  );
}