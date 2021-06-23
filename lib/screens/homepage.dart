import 'package:bottom_navigation_hold_states/core/constants/tab_items.dart';
import 'package:bottom_navigation_hold_states/screens/profile_page.dart';
import 'package:bottom_navigation_hold_states/screens/users_page.dart';
import 'package:bottom_navigation_hold_states/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TabItem _currentTab = TabItem.USERS;

  Map<TabItem, Widget> allPages() {
    return {
      TabItem.USERS: UsersPage(),
      TabItem.PROFILE: ProfilePage(),
    };
  }

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.USERS: GlobalKey<NavigatorState>(),
    TabItem.PROFILE: GlobalKey<NavigatorState>()
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // When you click the back button of the phone,
      // navigator stacks are controlled,
      // and if there is more than one page, the app returns the previous page,
      // but if there is one page in the stack, the app is closed.
      onWillPop: () async => !await navigatorKeys[_currentTab]!.currentState!.maybePop(),
      child: CustomBottomNavigation(
          currentTab: _currentTab, onSelectedTab: (chosenTab) {
            // If you navigated the tab to another pages while you are in the users tab, you are not navigated to users page when you click current tab item.
            // To prevent this situation, you can add a control the stack and you delete stack's elements except first(bottom) element in the stack when you click the current tab again.
            // Thus, you are directed to the users page while you are in the users stack.
            if(chosenTab == _currentTab){
              navigatorKeys[chosenTab]!.currentState!.popUntil((route) => route.isFirst);
            }else{
              setState(() {
                _currentTab = chosenTab;
              });
            }
      }, pageCreator: allPages(), navigatorKeys: navigatorKeys),
    );
  }
}
