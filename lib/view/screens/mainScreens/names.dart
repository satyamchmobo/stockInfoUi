import 'package:flutter/material.dart';
import 'package:stock_details/view/constants/colors.dart';
import 'package:stock_details/view/widgets/appBarWidget.dart';
import 'package:get/get.dart';

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
      appBar: getAppBar(pageTitle: "Other"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 15,
              right: 15,
            ),
            child: _buildChoiceChipsForMonths(),
          )
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
