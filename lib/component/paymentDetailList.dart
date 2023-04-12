import 'package:flutter/material.dart';
import 'package:flutter_sample/data.dart';
import 'package:flutter_sample/style/colors.dart';
import 'package:flutter_sample/style/style.dart';
import 'package:flutter_svg/svg.dart';

import 'payment_list_tile.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  const BoxShadow(
                      color: AppColors.iconGray,
                      blurRadius: 15.0,
                      offset: Offset(10.0, 15.0))
                ]),
            child: Image.asset('assets/images/card.png')),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Recent Activeties',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '02 Mar 2023',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            
          ],
        )
      ],
    );
  }
}
