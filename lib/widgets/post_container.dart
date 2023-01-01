// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter_sample/models/post_model.dart';
import 'package:flutter_sample/widgets/profile_avatar.dart';

import '../config/palette.dart';

class PostContainer extends StatelessWidget {
  final Post post;
  const PostContainer({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _PostHeader(post: post),
                const SizedBox(height: 4.0),
                Text(post.caption),
                post.imageUrl != null
                    ? const SizedBox.shrink()
                    : const SizedBox(height: 6.0),
              ],
            ),
          ),
          post.imageUrl != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CachedNetworkImage(imageUrl: post.imageUrl!),
                )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: _PostStats(post: post),
          )
        ]));
  }
}

class _PostStats extends StatelessWidget {
  final Post post;
  const _PostStats({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: const BoxDecoration(
                color: Palette.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4.0),
            Expanded(
              child: Text(post.likes.toString(),
                  style: TextStyle(color: Colors.grey[600])),
            ),
            Text('${post.comments} Comments',
                style: TextStyle(color: Colors.grey[600])),
            const SizedBox(width: 8.0),
            Text('${post.shares} Shares',
                style: TextStyle(color: Colors.grey[600]))
          ],
        ),
        const Divider(),
        Row(
          children: [
            _PostButton(
              icon: Icon(MdiIcons.thumbUpOutline),
              label: 'Like',
              onPressed: () => log('Like'),
              size: 20,
            ),
            _PostButton(
              icon: Icon(MdiIcons.commentOutline),
              label: 'Like',
              onPressed: () => log('Comment'),
              size: 20,
            ),
            _PostButton(
              icon: Icon(MdiIcons.shareOutline),
              label: 'Like',
              onPressed: () => log('Share'),
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final VoidCallback onPressed;
  final double size;
  const _PostButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0),
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;
  const _PostHeader({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: post.user.imageUrl, isActive: false),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.user.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${post.timeAgo} .',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 12.0),
                      ),
                      const Icon(
                        Icons.public,
                        size: 12.0,
                        color: Colors.grey,
                      ),
                    ])
              ]),
        ),
        IconButton(
            onPressed: () {
              log('More');
            },
            icon: const Icon(Icons.more_horiz))
      ],
    );
  }
}
