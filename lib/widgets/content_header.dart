import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sample/models/models.dart';
import 'package:flutter_sample/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  const ContentHeader({
    Key? key,
    required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black,
              Colors.transparent,
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl!),
          ),
        ),
        Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalIconButton(
                    icon: Icons.add,
                    title: 'List',
                    onTap: () => log('My List')),
                _PlayButton(),
                VerticalIconButton(
                    icon: Icons.info_outline,
                    title: 'Info',
                    onTap: () => log('Info'))
              ],
            ))
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => log('Play'),
      icon: const Icon(
        Icons.play_arrow,
        size: 30.0,
        color: Colors.black,
      ),
      label: const Text(
        'Play',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
        ),
      ),
    );
  }
}
