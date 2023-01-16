import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sample/data/data.dart';
import 'package:flutter_sample/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _scrollOffset = 0.0;
  late ScrollController _scrollController;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[859],
        child: const Icon(Icons.cast),
        onPressed: () => log('Cast'),
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar(
          scrollOffset: _scrollOffset,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: ContentHeader(featuredContent: sintelContent),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: Previews(
                key: const PageStorageKey('previews'),
                title: 'Previews',
                contentList: previews,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
                key: const PageStorageKey('myList'),
                title: 'My List',
                contentList: myList),
          ),
          SliverToBoxAdapter(
            child: ContentList(
                key: const PageStorageKey('netflixOriginals'),
                title: 'Netflix Originals',
                contentList: originals,
                isOriginals: true),
          ),
          SliverToBoxAdapter(
            child: ContentList(
                key: const PageStorageKey('trending'),
                title: 'Trending',
                contentList: trending),
          )
        ],
      ),
    );
  }
}
