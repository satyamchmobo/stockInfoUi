import 'package:flutter/material.dart';
import 'package:stock_details/view/constants/colors.dart';
import 'package:stock_details/view/widgets/outlineRoundBut.dart';
import 'package:stock_details/view/widgets/socialMRounBut.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  _OthersState createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            "Others",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          mainImage(),
          reviewShare(),
          followUsSection(),
          assist(),
        ],
      ),
    );
  }
}

Widget followUsSection() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 38, bottom: 15),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Follow us On",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        socialMediaButton(
            icon: FaIcon(
          FontAwesomeIcons.instagramSquare,
          color: Colors.white,
          size: 18,
        )),
        socialMediaButton(
            icon: FaIcon(
          FontAwesomeIcons.locationArrow,
          color: Colors.white,
          size: 18,
        )),
      ])
    ],
  );
}

Widget assist() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 38, bottom: 15, top: 15),
              child: Text("For any assistance email us",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 38, bottom: 15),
              child: Text("contact@example.com",
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline)),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget reviewShare() {
  return Padding(
    padding: EdgeInsets.only(top: 30, bottom: 30),
    child: Container(
      height: 140,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        outlineButton(label: "Write a review"),
        outlineButton(label: "Share app"),
      ]),
    ),
  );
}

Widget mainImage() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      height: 250,
      width: 250,
      child: Image.asset('assets/othersMainImage.jpg'),
    ),
  );
}
