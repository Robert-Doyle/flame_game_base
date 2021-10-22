import 'package:flutter/material.dart';

// Contains functions that return ui elements
// These are:
// - functions that return Widget or List<Widget>
// - functions that open a dialog, bottom-sheet or other ui element
//
// Any state or context must be passed into the function
// In most circumstances, state is not needed (prefer to pass in parameters)

class BaseUI {
  /// display date inforation
  Widget returnStringAsWidget(String string) {
    return Text(string);
  }
}
