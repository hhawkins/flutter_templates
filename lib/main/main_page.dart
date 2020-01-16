import 'package:flutter/material.dart';
import 'package:flutter_templates/main/cupertino_main_scaffold.dart';
import 'package:flutter_templates/main/tab_item.dart';
import 'package:flutter_templates/main/tabs/hamza.dart';
import 'package:flutter_templates/main/tabs/home.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabItem _currentTab = TabItem.home;

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.home: (_) => Home(),
      TabItem.hamza: (_) => Hamza(),
      TabItem.delaf: (_) => Container(),
      TabItem.seni: (_) => Container(),
      TabItem.alpha: (_) => Container(),
    };
  }

  void _select(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoMainScaffold(
      currentTab: _currentTab,
      onSelectTab: _select,
      widgetBuilders: widgetBuilders,
    );
  }
}