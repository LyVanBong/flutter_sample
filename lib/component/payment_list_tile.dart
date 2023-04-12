import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/colors.dart';
import '../style/style.dart';

class PaymentListTile extends StatelessWidget {
  const PaymentListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 20.0),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(20.0)),
        child: SvgPicture.asset(
          'assets/svg/drop.svg',
          width: 20.0,
        ),
      ),
      title: PrimaryText(
        text: 'Water Bill',
        size: 14.0,
        fontWeight: FontWeight.w500,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: 'Successfuly',
            size: 12.0,
            color: AppColors.secondary,
          ),
          PrimaryText(
            text: '676',
            size: 16.0,
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
