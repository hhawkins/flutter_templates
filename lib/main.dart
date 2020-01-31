import 'package:flutter/cupertino.dart';
import 'package:flutter_templates/app/pages/main_page/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final mainPage = MainPage();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Team Bios',
      home: mainPage,
    );
  }
}