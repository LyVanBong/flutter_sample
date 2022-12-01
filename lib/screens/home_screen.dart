import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/constants/color_constant.dart';
import 'package:flutter_sample/constants/style_constant.dart';
import 'package:flutter_sample/models/popular_destination_model.dart';
import 'package:flutter_sample/models/travlog_model.dart';
import 'package:flutter_svg/svg.dart';

import '../models/carousel_model.dart';
import '../widgets/bottom_navigation_travelkuy.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: mBackgroundColor,
        elevation: 0,
        title: const Text(
          'travalkuy🔔',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
            color: mBlueColor,
          ),
        ),
      ),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: const BottomNavigationTravelkuy(),
      body: Container(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Hi, Franklin 👋 This Promos for you',
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(
                  left: 16, right: 16, top: 16, bottom: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(carousels[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children: map<Widget>(carousels, (index, image) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  _current == index ? mBlueColor : mGreyColor),
                        );
                      })),
                      Text(
                        'More ...',
                        style: mMoreDiscountStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 16),
              child: Text('Let\'s booking!', style: mTitleStyle),
            ),
            Container(
              height: 144,
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              border: Border.all(color: mBorderColor, width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(children: [
                            SvgPicture.asset(
                              'assets/svg/service_flight_icon.svg',
                              fit: BoxFit.contain,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Flight', style: mServiceTitleStyle),
                                  Text('Feel freedom',
                                      style: mServiceSubtitleStyle)
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              border: Border.all(color: mBorderColor, width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(children: [
                            SvgPicture.asset(
                              'assets/svg/service_trains_icon.svg',
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Trains', style: mServiceTitleStyle),
                                  Text('Intercity',
                                      style: mServiceSubtitleStyle)
                                ],
                              ),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              border: Border.all(color: mBorderColor, width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(children: [
                            SvgPicture.asset(
                              'assets/svg/service_hotel_icon.svg',
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Hotel', style: mServiceTitleStyle),
                                  Text('Let\'s take a break',
                                      style: mServiceSubtitleStyle)
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              border: Border.all(color: mBorderColor, width: 1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(children: [
                            SvgPicture.asset(
                              'assets/svg/service_car_icon.svg',
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Car rental', style: mServiceTitleStyle),
                                  Text('Around the city',
                                      style: mServiceSubtitleStyle)
                                ],
                              ),
                            ),
                          ]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 16),
              child: Text('Popular Destinations!', style: mTitleStyle),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 16),
                itemCount: populars.length,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        height: 140,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  populars[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                populars[index].name,
                                style: mPopularDestinationTitleStyle,
                              ),
                              Text(
                                populars[index].country,
                                style: mPopularDestinationSubtitleStyle,
                              )
                            ],
                          ),
                        ),
                      ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 16),
              child: Text('Travlog!', style: mTitleStyle),
            ),
            Container(
              height: 181,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: travlogs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: mBorderColor, width: 1),
                                  image: DecorationImage(
                                      image: AssetImage(travlogs[index].image),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                                child: Text(
                              'Travlog ' + travlogs[index].name,
                              style: mTravlogTitleStyle,
                            ))
                          ],
                        ),
                        Text(
                          travlogs[index].content,
                          style: mTravlogContentStyle,
                        ),
                        Text(
                          travlogs[index].place,
                          style: mTravlogPlacesStyle,
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
