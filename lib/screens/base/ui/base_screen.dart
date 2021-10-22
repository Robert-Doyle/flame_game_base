import 'package:baseapp/screens/base/controllers/base_ui.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // define variables
    // final String baseScreenText = 'Base Screen';
    // final BaseUI ui = BaseUI();

    // prepare data

    // display widget
    return Container(
      child: Center(child: Text('Base Screen')),
      // child: Center(child: Text(baseScreenText)),
      //child: Center(child: ui.returnStringAsWidget(baseScreenText),)
    );
  }
}
