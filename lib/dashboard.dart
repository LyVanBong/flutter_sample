import 'package:flutter/material.dart';
import 'package:flutter_sample/config/size_config.dart';
import 'package:flutter_sample/style/colors.dart';
import 'package:flutter_svg/svg.dart';

import 'component/app_bar_Action_item.dart';
import 'component/side_menu.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 1,
            child: SideMenu(),
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              color: AppColors.secondaryBg,
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Column(
                children: [
                  AppBarActionItems(),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
