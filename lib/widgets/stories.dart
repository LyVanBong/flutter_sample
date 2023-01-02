// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/config/palette.dart';
import 'package:flutter_sample/widgets/profile_avatar.dart';
import 'package:flutter_sample/widgets/widgets.dart';

import '../models/models.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;
  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Responsive.isDesktop(context) ? Colors.transparent : Colors.white,
      child: ListView.builder(
          itemCount: 1 + stories.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          itemBuilder: ((context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: _StoryCard(
                    isAddStory: false,
                    currentUser: currentUser,
                    story: stories[0]),
              );
            }
            final Story story = stories[index - 1];
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: _StoryCard(
                    isAddStory: true, currentUser: currentUser, story: story));
          })),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currentUser;
  final Story story;
  const _StoryCard({
    Key? key,
    required this.isAddStory,
    required this.currentUser,
    required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
              imageUrl: isAddStory ? story.imageUrl : currentUser.imageUrl,
              width: 110.0,
              height: double.infinity,
              fit: BoxFit.cover),
        ),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
              gradient: Palette.storyGradient,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: Responsive.isDesktop(context)
                  ? const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 4.0)
                    ]
                  : null),
        ),
        Positioned(
          child: isAddStory
              ? ProfileAvatar(
                  imageUrl: story.user.imageUrl,
                  isActive: false,
                  hasBorder: true,
                )
              : Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      log('Add to Story');
                    },
                  )),
          top: 8.0,
          left: 8.0,
        ),
        Positioned(
          child: Text(
            !isAddStory ? 'Add to story' : story.user.name,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          bottom: 8.0,
          left: 8.0,
          right: 8.0,
        ),
      ],
    );
  }
}
