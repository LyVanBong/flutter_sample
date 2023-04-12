import 'package:flutter/material.dart';
import 'package:flutter_sample/config/size_config.dart';
import 'package:flutter_sample/style/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/calendar.svg',
              width: 20.0,
            )),
        const SizedBox(width: 20.0),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/ring.svg',
              width: 20.0,
            )),
        const SizedBox(width: 15.0),
        Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                  'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859'),
            ),
          ],
        )
      ],
    );
  }
}
