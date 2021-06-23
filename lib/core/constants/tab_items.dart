import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This enum contains tab values of the app
enum TabItem { PROFILE, USERS }

// This class hold tab information such as title and icon,
// and create a map that contains which tab item equals which title and icon
class TabItemData {
  final String title;
  final IconData icon;

  TabItemData(this.title, this.icon);

  static Map<TabItem, TabItemData> allTabs = {
    TabItem.PROFILE: TabItemData("Profile", Icons.person_sharp),
    TabItem.USERS: TabItemData("Users", Icons.supervisor_account)
  };
}
