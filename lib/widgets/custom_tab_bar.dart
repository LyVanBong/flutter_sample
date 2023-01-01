// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sample/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIdex;
  final Function(int) onTap;
  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIdex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
          border:
              Border(top: BorderSide(color: Palette.facebookBlue, width: 3.0))),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  e,
                  color:
                      i == selectedIdex ? Palette.facebookBlue : Colors.black45,
                  size: 30.0,
                ),
              )))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
