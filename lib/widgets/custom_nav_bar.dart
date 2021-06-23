import 'package:bottom_navigation_hold_states/core/constants/tab_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/// This widget just makes bottom navigation bar show and controls which tab tapped
class CustomBottomNavigation extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectedTab;
  final Map<TabItem, Widget> pageCreator;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  const CustomBottomNavigation(
      {Key? key, required this.currentTab, required this.onSelectedTab, required this.pageCreator, required this.navigatorKeys})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // tabBar is a value related to the visibility of the bottom navigation menu
    // tabBuilder is a value related to the which data to shown
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            _createNavItem(TabItem.PROFILE),
            _createNavItem(TabItem.USERS)
          ],
          onTap: (index) => onSelectedTab(TabItem.values[index]),
        ),
        tabBuilder: (context, index) {
          final showingItem = TabItem.values[index];
          return CupertinoTabView(
            navigatorKey: navigatorKeys[showingItem],
            builder: (context) => pageCreator[showingItem]!,
          );
        });
  }

  BottomNavigationBarItem _createNavItem(TabItem tabItem) {
    final TabItemData? currentTabData = TabItemData.allTabs[tabItem];

    return BottomNavigationBarItem(
        icon: Icon(currentTabData!.icon), label: currentTabData.title);
  }
}
