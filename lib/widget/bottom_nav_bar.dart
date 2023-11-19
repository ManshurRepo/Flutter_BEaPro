// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      height: 85,
      color: Colors.black,
      // color: const Color.fromARGB(255, 160, 248, 87),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            bottomIcon: "assets/icons/menu1.svg",
            bottomTitle: "Menu",
            isActive: false,
            press: () {},
          ),
          BottomNavItem(
            bottomIcon: "assets/icons/latihan.svg",
            bottomTitle: "All Exercise",
            isActive: true,
            press: () {},
          ),
          BottomNavItem(
            bottomIcon: "assets/icons/calendar.svg",
            bottomTitle: "Calendar",
            isActive: false,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String bottomIcon;
  final String bottomTitle;
  final void Function() press;
  final bool isActive;

  const BottomNavItem({
    Key? key,
    required this.bottomIcon,
    required this.bottomTitle,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              isActive ? kActiveIconColor : kInactiveIconColor,
              BlendMode.srcIn,
            ),
            child: SvgPicture.asset(
              bottomIcon,
              height: isActive ? kActiveIconSize : kInactiveIconSize,
              width: isActive ? kActiveIconSize : kInactiveIconSize,
            ),
          ),
          Text(
            bottomTitle,
            style: TextStyle(
              color: isActive ? kActiveIconColor : Colors.white,
              fontFamily: "Lato",
              fontSize: isActive ? kActiveFontSize : kInactiveFontSize,
            ),
          ),
        ],
      ),
    );
  }
}

const Color kActiveIconColor = Colors.lightGreen;
const Color kInactiveIconColor = Colors.white;
const double kActiveIconSize = 38.0;
const double kInactiveIconSize = 28.0;
const double kActiveFontSize = 18.0;
const double kInactiveFontSize = 15.0;
