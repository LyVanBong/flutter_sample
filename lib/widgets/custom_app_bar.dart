// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_sample/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        color: Colors.black
            .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: SafeArea(
          child: Row(
            children: [
              Image.asset(Assets.netflixLogo0),
              const SizedBox(width: 12.0),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _AppBarButton(
                      title: 'TV Shows',
                      onTap: () => log('TV Shows'),
                    ),
                    _AppBarButton(
                      title: 'Mov',
                      onTap: () => log('Movies'),
                    ),
                    _AppBarButton(
                      title: 'My List',
                      onTap: () => log('My List'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const _AppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
