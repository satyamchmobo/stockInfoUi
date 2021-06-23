import 'package:flutter/material.dart';
import 'package:stock_details/view/widgets/appBarWidget.dart';
import 'package:stock_details/view/widgets/updateListWidget.dart';

class Updates extends StatefulWidget {
  const Updates({Key? key}) : super(key: key);

  @override
  _UpdatesState createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        pageTitle: "Updates",
        height: MediaQuery.of(context).size.height,
      ),
      body: updateList(),
    );
  }
}
