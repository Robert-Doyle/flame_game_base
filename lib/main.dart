import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:flame_game_base/jetpack_game.dart';

Future<void> main() async {
  final JetpackGame myGame = JetpackGame();
  runApp(GameWidget(game: myGame));
}
