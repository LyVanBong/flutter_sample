import 'package:flutter/material.dart';
import 'package:flutter_sample/constants/color_constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  const BottomNavigationTravelkuy({super.key});

  @override
  State<BottomNavigationTravelkuy> createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;

  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: mFillColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: const Offset(0, 5))
            ],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? SvgPicture.asset(
                        'assets/svg/home_colored.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      )
                    : SvgPicture.asset(
                        'assets/svg/home.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? SvgPicture.asset(
                        'assets/svg/order_colored.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      )
                    : SvgPicture.asset(
                        'assets/svg/order.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      ),
                label: 'My Order'),
            BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? SvgPicture.asset(
                        'assets/svg/watch_colored.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      )
                    : SvgPicture.asset(
                        'assets/svg/watch.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      ),
                label: 'Watch List'),
            BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? SvgPicture.asset(
                        'assets/svg/account_colored.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      )
                    : SvgPicture.asset(
                        'assets/svg/account.svg',
                        height: 28,
                        width: 28,
                        fit: BoxFit.contain,
                      ),
                label: 'Account'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: mBlueColor,
          unselectedItemColor: mSubTitleColor,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0,
        ));
  }
}
