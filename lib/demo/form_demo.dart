import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        // data: ThemeData(
        //   primaryColor: Colors.black,
        // ),
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: ThemeDemo(),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).primaryColor,
      color: Theme.of(context).accentColor,
    );
  }
}