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
          Padding(padding: EdgeInsets.all(20),
          child: Text('Mangae your finance Stock/Share Market Follow this site and get information on investing,personal finance and how to have enough money to lead the life they actually want, whick helps investers make their'),)
          ,
           Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30)
           ,
           child: Text('financial lives more better and inspiring for others . A personal finance blog teachibng everything about money and how to live a good finanical life. Follow this blog and get informatin on mutual funds, financial planning and insurance services and much more...',),
           )
          ],
        ));
  }
}
