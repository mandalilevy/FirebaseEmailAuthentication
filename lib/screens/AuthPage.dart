import 'package:flutter/material.dart';

import 'LoginPage.dart';
import 'RegisterPage.dart';
class Authpage extends StatefulWidget {
  const Authpage({super.key});

  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
    bool showLogin = true;

    void toggleView() {
      setState(() {
        showLogin = !showLogin;
      });
    }
  @override
  Widget build(BuildContext context) {
    return showLogin
        ? LoginPage(toggleView: toggleView)
        : RegisterPage(toggleView: toggleView);
  }
}
