import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sample/models/user_model.dart';
import 'package:flutter_sample/widgets/profile_avatar.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('select user');
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: user.imageUrl, isActive: false),
          const SizedBox(width: 6.0),
          Text(
            user.name,
            style: const TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
