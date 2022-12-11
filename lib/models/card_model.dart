// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_sample/constants/color_constant.dart';

class CardModel {
  String name;
  String type;
  String balance;
  String valid;
  String moreIcon;
  String cardBackground;
  Color bgColor;
  Color firstColor;
  Color secondColor;
  CardModel(
    this.name,
    this.type,
    this.balance,
    this.valid,
    this.moreIcon,
    this.cardBackground,
    this.bgColor,
    this.firstColor,
    this.secondColor,
  );
}

List<CardModel> cards = cardData
    .map((e) => CardModel(
        e['name'].toString(),
        e['type'].toString(),
        e['balance'].toString(),
        e['valid'].toString(),
        e['moreIcon'].toString(),
        e['cardBackground'].toString(),
        e['bgColor'] as Color,
        e['firstColor'] as Color,
        e['secondColor'] as Color))
    .toList();

var cardData = [
  {
    "name": "Prabors",
    "type": "assets/images/mastercard_logo.png",
    "balance": "1,000,000",
    "valid": "12/24",
    "moreIcon": "assets/icons/more_icon_grey.svg",
    "cardBackground": "assets/svg/mastercard.svg",
    "bgColor": kBlueColor,
    "firstColor": kGreyColor,
    "secondColor": kBlackColor,
  },
  {
    "name": "Prabors",
    "type": "assets/images/mastercard_logo.png",
    "balance": "1,000,000",
    "valid": "12/24",
    "moreIcon": "assets/icons/more_icon_grey.svg",
    "cardBackground": "assets/svg/mastercard.svg",
    "bgColor": kOrangeColor,
    "firstColor": kGreyColor,
    "secondColor": kBlackColor,
  },
  {
    "name": "Prabors",
    "type": "assets/images/mastercard_logo.png",
    "balance": "1,000,000",
    "valid": "12/24",
    "moreIcon": "assets/icons/more_icon_grey.svg",
    "cardBackground": "assets/svg/mastercard.svg",
    "bgColor": kJeniusCardColor,
    "firstColor": kWhiteColor,
    "secondColor": kWhiteColor,
  },
  {
    "name": "Prabors",
    "type": "assets/images/mastercard_logo.png",
    "balance": "1,000,000",
    "valid": "12/24",
    "moreIcon": "assets/icons/more_icon_grey.svg",
    "cardBackground": "assets/svg/mastercard.svg",
    "bgColor": kGreenColor,
    "firstColor": kGreyColor,
    "secondColor": kBlackColor,
  }
];
