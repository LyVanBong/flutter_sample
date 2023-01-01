import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sample/config/palette.dart';
import 'package:flutter_sample/widgets/widgets.dart';

import '../models/models.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({
    Key? key,
    required this.onlineUsers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: Colors.white,
      child: ListView.builder(
          itemCount: 1 + onlineUsers.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(imageUrl: user.imageUrl, isActive: true),
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: (() {
          log('Create Room');
        }),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: const BorderSide(width: 3.0, color: Colors.blueAccent),
        ),
        child: Row(
          children: [
            ShaderMask(
              shaderCallback: (rect) =>
                  Palette.createRoomGradient.createShader(rect),
              child: const Icon(
                Icons.video_call,
                size: 35.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 4.0,
            ),
            const Text(
              'Create\nRoom',
            ),
          ],
        ));
  }
}
