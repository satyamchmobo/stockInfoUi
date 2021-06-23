import 'package:flutter/material.dart';
import 'package:stock_details/view/widgets/appBarWidget.dart';


class NewArticle extends StatefulWidget {
  String pageTitle="";
  NewArticle({required this.pageTitle});
  @override
  _NewArticleState createState() => _NewArticleState();
 
  
}

class _NewArticleState extends State<NewArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: getAppBar(pageTitle: widget.pageTitle),
        ),
      body: Container(

      ),
    );

  }
}