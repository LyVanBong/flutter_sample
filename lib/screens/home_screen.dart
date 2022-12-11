import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sample/constants/color_constant.dart';
import 'package:flutter_sample/models/card_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_sharp,
            color: kBlackColor,
          ),
          onPressed: () {},
          padding: const EdgeInsets.only(left: 8),
        ),
      ),
      body: SizedBox(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Hi, Prambors!',
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: kBlackColor),
              ),
            ),
            SizedBox(
              height: 175,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16, top: 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: cards.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      height: 175,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: cards[index].bgColor,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x10000000),
                                blurRadius: 10,
                                spreadRadius: 4,
                                offset: Offset(0, 8))
                          ]),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 16,
                            top: 12,
                            child: Image.asset(cards[index].type),
                            height: 22,
                            width: 33,
                          ),Positioned(child: child)
                        ],
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
