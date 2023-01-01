import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sample/config/palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../data/data.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            centerTitle: false,
            floating: false,
            title: const Text(
              'facebook',
              style: TextStyle(
                color: Palette.facebookBlue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              CircleButton(
                  icon: Icons.search,
                  iconSize: 30.0,
                  onPressed: () {
                    log('Search');
                  }),
              CircleButton(
                  icon: MdiIcons.facebookMessenger,
                  iconSize: 35,
                  onPressed: () {
                    log('Messenger');
                  }),
            ],
          ),
          SliverToBoxAdapter(
              child: CreatePostContainer(currentUser: currentUser)),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
