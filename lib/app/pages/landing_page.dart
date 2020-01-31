import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_templates/app/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_templates/app/pages/main_page/main_page.dart';
import 'package:flutter_templates/app/pages/sign_in/sign_in_page.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context);
    return StreamBuilder<User>(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User user = snapshot.data;
            if (user == null) {
              return SignInPage.create(context);
            }
            return MainPage();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
