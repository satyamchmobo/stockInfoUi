

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stock_details/view/constants/colors.dart';
import 'package:stock_details/view/widgets/appBarWidget.dart';
import 'package:get/get.dart';
import 'package:stock_details/view/widgets/myExpTile.dart';

class Names extends StatefulWidget {
  const Names({Key? key}) : super(key: key);

  @override
  _NamesState createState() => _NamesState();
}

class _NamesState extends State<Names> {
  Color chipBorderColor = Color(0xFFF0AE93);
  List<String> topFiltters = [];
  int topFilttersIndex = 0;
  bool selectedStatus = false;
  @override
  void initState() {
    super.initState();
    topFiltters = ['Top 5', 'Top 10', 'Top 15', 'Search'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        pageTitle: "Other", height: 600,
       // height: MediaQuery.of(context).size.height,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 15,
              right: 15,
            ),
            child: _buildChoiceChipsForMonths(),
          ),
          //  Text('fdfdfdddddddddddddddd'),
          Expanded(
            child: ListView(
              //   scrollDirection: Axis.vertical,
              children: [
                Container(
                  color: Colors.white,
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    dense: true, //removes additional space vertically
                    child: MyExpansionTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 65,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 55,
                                    height: 29,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEFF1),
                                      borderRadius: BorderRadius.circular(5),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: Alignment(0.050000000000000044,
                                        0.050000000000000044),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(2, 3, 0, 0),
                                          child: Text(
                                            'Analyst',
                                            style: Get.textTheme.bodyText1!
                                                .copyWith(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF6C7680),
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 1, 0, 4),
                                          child: Text(
                                            'Sentiment',
                                            style: Get.textTheme.bodyText1!
                                                .copyWith(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF6C7680),
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF15BE56),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 4, 10, 4),
                                      child: Text(
                                        'BUY',
                                        style:
                                            Get.textTheme.bodyText1!.copyWith(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'XYZ LIMITED',
                                    style: Get.textTheme.bodyText1!.copyWith(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 28, 0),
                                        child: Text(
                                          'Buy Price',
                                          style:
                                              Get.textTheme.bodyText1!.copyWith(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF7B8D9D),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1,000',
                                        style:
                                            Get.textTheme.bodyText1!.copyWith(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Total Range',
                                        style:
                                            Get.textTheme.bodyText1!.copyWith(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF7B8D9D),
                                        ),
                                      ),
                                      Container(
                                        width: 75,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '200 - 1,500',
                                                style: Get.textTheme.bodyText1!
                                                    .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                '10% - 30 %',
                                                style: Get.textTheme.bodyText1!
                                                    .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF31DE59),
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 65, top: 5),
                                    child: Text(
                                      'show more',
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      width: 55,
                                      height: 29,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEFF1),
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: Alignment(0.050000000000000044,
                                          0.050000000000000044),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(2, 3, 0, 0),
                                            child: Text(
                                              'People',
                                              style: Get.textTheme.bodyText1!
                                                  .copyWith(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF6C7680),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 1, 0, 4),
                                            child: Text(
                                              'Sentiment',
                                              style: Get.textTheme.bodyText1!
                                                  .copyWith(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF6C7680),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/speed.jpg',
                                      width: 150,
                                      height: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      children: <Widget>[
                        // ListTile(
                        //   title: Text(
                        //     'fdfdf',
                        //     style: TextStyle(fontWeight: FontWeight.w700),
                        //   ),
                        // ),

                        tileContents()

                        // tileContents(),
                      ],
                    ),
                  ),
                ),

                Divider(),
                Container(
                  color: Colors.white,
                  child: ListTileTheme(
                    contentPadding: EdgeInsets.all(0),
                    dense: true, //removes additional space vertically
                    child: MyExpansionTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 65,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 55,
                                    height: 29,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEFF1),
                                      borderRadius: BorderRadius.circular(5),
                                      shape: BoxShape.rectangle,
                                    ),
                                    alignment: Alignment(0.050000000000000044,
                                        0.050000000000000044),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(2, 3, 0, 0),
                                          child: Text(
                                            'Analyst',
                                            style: Get.textTheme.bodyText1!
                                                .copyWith(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF6C7680),
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 1, 0, 4),
                                          child: Text(
                                            'Sentiment',
                                            style: Get.textTheme.bodyText1!
                                                .copyWith(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF6C7680),
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF15BE56),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 5, 10, 4),
                                      child: Text(
                                        'BUY',
                                        style:
                                            Get.textTheme.bodyText1!.copyWith(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 170,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'XYZ LIMITED',
                                    style: Get.textTheme.bodyText1!.copyWith(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 28, 0),
                                        child: Text(
                                          'Buy Price',
                                          style:
                                              Get.textTheme.bodyText1!.copyWith(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF7B8D9D),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1,000',
                                        style:
                                            Get.textTheme.bodyText1!.copyWith(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Total Range',
                                        style:
                                            Get.textTheme.bodyText1!.copyWith(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF7B8D9D),
                                        ),
                                      ),
                                      Container(
                                        width: 75,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(8, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '200 - 1,500',
                                                style: Get.textTheme.bodyText1!
                                                    .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              Text(
                                                '10% - 30 %',
                                                style: Get.textTheme.bodyText1!
                                                    .copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF31DE59),
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 65, top: 5),
                                    child: Text(
                                      'show more',
                                      style: TextStyle(
                                          color: Colors.lightBlueAccent),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 110,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Container(
                                      width: 55,
                                      height: 29,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEEEFF1),
                                        borderRadius: BorderRadius.circular(5),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: Alignment(0.050000000000000044,
                                          0.050000000000000044),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(2, 3, 0, 0),
                                            child: Text(
                                              'People',
                                              style: Get.textTheme.bodyText1!
                                                  .copyWith(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF6C7680),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 1, 0, 4),
                                            child: Text(
                                              'Sentiment',
                                              style: Get.textTheme.bodyText1!
                                                  .copyWith(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF6C7680),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/speed.jpg',
                                      width: 150,
                                      height: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      children: <Widget>[
                        // ListTile(
                        //   title: Text(
                        //     'fdfdf',
                        //     style: TextStyle(fontWeight: FontWeight.w700),
                        //   ),
                        // ),

                        tileContents()

                        // tileContents(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


                  subscribeUi()
        ],
      ),
    );
  }

  Widget _buildChoiceChipsForMonths() {
    return Container(
      height: 66,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int index = 0; index < topFiltters.length; index++)
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Transform(
                      transform: Matrix4.identity()..scale(1.02),
                      child: ChoiceChip(
                          label: Text(topFiltters[index]),
                          selected: topFilttersIndex == index,
                          selectedColor: primaryPurple,

                          // shape: StadiumBorder(

                          //     side: BorderSide(

                          //   width: 1,
                          //   color: Color(0xFFF0AE93),
                          // )),

                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: Color(0xFFF0AE93),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          onSelected: (bool selected) {
                            if (selected == true) {
                              setState(() {
                                topFilttersIndex = index;
                              });
                              chipBorderColor = primaryPurple;
                            } else {
                              chipBorderColor = Color(0xFFF0AE93);
                            }

                            // print(index);

                            // if (curDate != null) {
                            //   setState(() {
                            //     curDate = DateTime.now().add(Duration(
                            //         days: _goalTimelineIntMonths[
                            //                     _goalTimelinechoiceIndex]
                            //                 .toInt() *
                            //             30));

                            //     goal.dueDate = curDate != null ? curDate : null;
                            //   });
                            // }

                            // if (curDate == null) {
                            //   setState(() {
                            //     curDate = DateTime.now().add(Duration(
                            //         days: _goalTimelineIntMonths[
                            //                     _goalTimelinechoiceIndex]
                            //                 .toInt() *
                            //             30));

                            //     goal.dueDate = curDate != null ? curDate : null;
                            //   });
                            // }
                          },
                          backgroundColor: Colors.white,
                          labelStyle: Get.textTheme.bodyText2!.copyWith(
                            color: Color(0xFFF0AE93),
                          )),
                    ),
                  ),
              ],
            )),
      ),
    );
  }
}

Widget tileContents() {
  return SafeArea(
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 115,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Recommendation Date',
                                    style: Get.textTheme.bodyText1!.copyWith(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF7B8D9D),
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment(0, 0),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Text(
                                        '01-May-21',
                                        style:
                                            Get.textTheme.bodyText1!.copyWith(
                                          fontFamily: 'Poppins',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment(-0.85, 0),
                                child: Text(
                                  'Price On Recommendation',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF7B8D9D),
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: Text(
                                      '1,000',
                                      style: Get.textTheme.bodyText1!.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment(-0.85, 0),
                                child: Text(
                                  'Today\'s Price',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF7B8D9D),
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    child: Text(
                                      '1,250',
                                      style: Get.textTheme.bodyText1!.copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment(-0.05, 0),
                child: Text(
                  'Analyst Estimation Range',
                  style: Get.textTheme.bodyText1!.copyWith(
                    fontFamily: 'Poppins',
                    color: Color(0xFF7B8D9D),
                    fontSize: 11,
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 14, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Target 1',
                                style: Get.textTheme.bodyText1!.copyWith(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF7B8D9D),
                                ),
                              ),
                              Icon(
                                Icons.verified_rounded,
                                color: Color(0xFF31DE59),
                                size: 19,
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment(0, 0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Text(
                                    '1,803',
                                    style: Get.textTheme.bodyText1!.copyWith(
                                      fontFamily: 'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  '25%',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF39DF60),
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(-0.85, 0),
                            child: Text(
                              'Target 2',
                              style: Get.textTheme.bodyText1!.copyWith(
                                fontFamily: 'Poppins',
                                color: Color(0xFF7B8D9D),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  '1,965',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  '8%',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF39DF60),
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(-0.85, 0),
                            child: Text(
                              'Target 2',
                              style: Get.textTheme.bodyText1!.copyWith(
                                fontFamily: 'Poppins',
                                color: Color(0xFF7B8D9D),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  '1,965',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  '8%',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF39DF60),
                                    fontSize: 10,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 274,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'People sentiment score',
                            style: Get.textTheme.bodyText1!.copyWith(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '67% positive news in the last 7 days (up 7% ) ',
                                style: Get.textTheme.bodyText1!.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.arrowUp,
                                color: Color(0xFF58E479),
                                size: 17,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Image.asset(
                          'assets/images/speed.jpg',
                          width: 70,
                          height: 170,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                indent: 2,
                endIndent: 3,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment(-0.85, 0),
                          child: Text(
                            'Today\'s Price',
                            style: Get.textTheme.bodyText1!.copyWith(
                              fontFamily: 'Poppins',
                              color: Color(0xFF7B8D9D),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            '1,250',
                            style: Get.textTheme.bodyText1!.copyWith(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(-0.85, 0),
                            child: Text(
                              '5 day',
                              style: Get.textTheme.bodyText1!.copyWith(
                                fontFamily: 'Poppins',
                                color: Color(0xFF7B8D9D),
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  '4%',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(-0.85, 0),
                            child: Text(
                              '1 Month',
                              style: Get.textTheme.bodyText1!.copyWith(
                                fontFamily: 'Poppins',
                                color: Color(0xFF7B8D9D),
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text(
                                  '7%',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment(-0.85, 0),
                          child: Text(
                            '3 Month',
                            style: Get.textTheme.bodyText1!.copyWith(
                              fontFamily: 'Poppins',
                              color: Color(0xFF7B8D9D),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                '-2%',
                                style: Get.textTheme.bodyText1!.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment(-0.85, 0),
                          child: Text(
                            '2 Year',
                            style: Get.textTheme.bodyText1!.copyWith(
                              fontFamily: 'Poppins',
                              color: Color(0xFF7B8D9D),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text(
                                '5%',
                                style: Get.textTheme.bodyText1!.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),


      ],
    ),
  );
}

Widget subscribeUi() {
  return Container(
     height: 80,
    width:350,
    decoration :BoxDecoration(
      border : Border.all(
         width: 1,
        color:Color(0xFFE5CFE7)),
     
      borderRadius: BorderRadius.circular(5)
      ),

  

    child:Padding(
      padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
      child: Container(
      height: 60,
      width:250,
      child: RaisedButton(
        textColor: Colors.white,
        color: primaryPurple,
        child: Text('Subscribe to View More'),
        onPressed: () {},
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
  ),
    )


  );
}
