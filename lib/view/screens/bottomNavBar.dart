import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_details/view/constants/colors.dart';
import 'package:stock_details/view/screens/mainScreens/guidlines.dart';
import 'package:stock_details/view/screens/mainScreens/names.dart';
import 'package:stock_details/view/screens/mainScreens/others.dart';
import 'package:stock_details/view/screens/mainScreens/updates.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  List<Widget> pages = [
    Names(),
    Updates(),
    Guidlines(),
    Others(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: primaryPurple,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          bottomNavItem(
              icon: Icon(
                Icons.stay_current_landscape_outlined,
                color: Colors.grey,
              ),
              tabname: "Names"),
          bottomNavItem(
              icon: Icon(
                Icons.message,
                color: Colors.grey,
              ),
              tabname: "Udates"),
          bottomNavItem(
              icon: Icon(
                Icons.info_outline,
                color: Colors.grey,
              ),
              tabname: "Guidlines"),
          bottomNavItem(
              icon: Icon(
                Icons.grid_3x3_outlined,
                color: Colors.grey,
              ),
              tabname: "Others"),
        ],
      ),
    );
  }

  Widget getPage() {
    return pages.elementAt(selectedIndex);
  }

  BottomNavigationBarItem bottomNavItem(
      {required Icon icon, required String tabname}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 7, top: 10),
        child: Container(height: 21, width: 30, child: icon),
      ),
      title: Text(
        tabname,
        style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3E5061)),
      ),
    );
  }
}
