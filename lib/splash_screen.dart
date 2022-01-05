import 'package:courses/themes/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Welcome to droidinsight',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'It looks like you are experiencing problems\nwith our sign up process. We are here to\nhelp so please get in touch with us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
