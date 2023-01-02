import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../data/data.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final List<IconData> _icons = const [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    Icons.menu,
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          appBar: Responsive.isDesktop(context)
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(100.0),
                  child: CustomAppBar(
                    currentUser: currentUser,
                    icons: _icons,
                    selectedIndex: _selectedIndex,
                    onTap: (index) => setState(() => _selectedIndex = index),
                  ),
                )
              : null,
          body: IndexedStack(index: _selectedIndex, children: _screens),
          bottomNavigationBar: !Responsive.isDesktop(context)
              ? Container(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: CustomTabBar(
                      icons: _icons,
                      selectedIdex: _selectedIndex,
                      onTap: (index) => setState(() => _selectedIndex = index)),
                )
              : const SizedBox.shrink(),
        ));
  }
}
