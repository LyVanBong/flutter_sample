import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/size_config.dart';
import '../style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.screenHeight,
      color: AppColors.secondaryBg,
      child: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              height: 100,
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 35,
                height: 35,
                child: SvgPicture.asset('assets/svg/mac-action.svg'),
              )),
          IconButton(
              onPressed: () {},
              iconSize: 20,
              padding: const EdgeInsets.symmetric(vertical: 20),
              icon: SvgPicture.asset(
                'assets/svg/home.svg',
                color: AppColors.iconGray,
              )),
          IconButton(
              onPressed: () {},
              iconSize: 20,
              padding: const EdgeInsets.symmetric(vertical: 20),
              icon: SvgPicture.asset(
                'assets/svg/pie-chart.svg',
                color: AppColors.iconGray,
              )),
          IconButton(
              onPressed: () {},
              iconSize: 20,
              padding: const EdgeInsets.symmetric(vertical: 20),
              icon: SvgPicture.asset(
                'assets/svg/clipboard.svg',
                color: AppColors.iconGray,
              )),
          IconButton(
              onPressed: () {},
              iconSize: 20,
              padding: const EdgeInsets.symmetric(vertical: 20),
              icon: SvgPicture.asset(
                'assets/svg/credit-card.svg',
                color: AppColors.iconGray,
              )),
          IconButton(
              onPressed: () {},
              iconSize: 20,
              padding: const EdgeInsets.symmetric(vertical: 20),
              icon: SvgPicture.asset(
                'assets/svg/trophy.svg',
                color: AppColors.iconGray,
              )),
          IconButton(
              onPressed: () {},
              iconSize: 20,
              padding: const EdgeInsets.symmetric(vertical: 20),
              icon: SvgPicture.asset(
                'assets/svg/invoice.svg',
                color: AppColors.iconGray,
              ))
        ],
      )),
    );
  }
}
