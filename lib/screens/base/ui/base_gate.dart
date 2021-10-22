import 'package:baseapp/screens/base/controllers/base_state.dart';
import 'package:baseapp/screens/base/ui/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseGate extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => BaseState(), child: BaseScreen());
  }
}
