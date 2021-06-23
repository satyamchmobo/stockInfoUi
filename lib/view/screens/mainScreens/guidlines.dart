import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_details/view/widgets/appBarWidget.dart';

import '../../widgets/appBarWidget.dart';
import '../../widgets/appBarWidget.dart';
import '../../widgets/appBarWidget.dart';
import '../../widgets/appBarWidget.dart';

class Guidlines extends StatefulWidget {
  const Guidlines({Key? key}) : super(key: key);

  @override
  _GuidlinesState createState() => _GuidlinesState();
}

class _GuidlinesState extends State<Guidlines> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    // final appBar = ;
    return Scaffold(
        appBar: getAppBar(
          pageTitle: 'Guidelines',
          height: mediaquery.size.height,
        ),
        body: ListView(
          children: [
            Container(),
          ],
        ));
  }
}
