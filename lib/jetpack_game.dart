import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flame_game_base/player.dart';

enum GameView {
  MAINMENU,
  INGAME,
}

class JetpackGame extends FlameGame with PanDetector, TapDetector {
  JetpackGame();

  late Player _player;

  GameView _curView = GameView.MAINMENU;

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    _player = Player();
    add(_player);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    //_player.move(info.delta.game);
    _player.onPanUpdate(info);
  }

  // @override
  // void onPanStart(DragStartInfo info) {
  //   print("pan start");
  //   super.onPanStart(info);
  // }

  @override
  void onPanCancel() {
    super.onPanCancel();
    print("pan cancel");
    _player.releaseCharge();
  }

  @override
  void onPanDown(DragDownInfo info) {
    super.onPanDown(info);
    print("pan down");
    _player.startCharging(info);
  }

  @override
  void onPanEnd(DragEndInfo info) {
    super.onPanEnd(info);
    print("pan end");
    _player.releaseCharge();
  }

  // @override
  // void onTapDown(TapDownInfo info) {
  //   print("tap down");
  //   super.onTapDown(info);
  //   _player.startCharging(info);
  // }

  // @override
  // void onTapUp(TapUpInfo info) {
  //   print("tap up");
  //   super.onTapUp(info);
  //   _player.releaseCharge(info);
  // }

  // @override
  // void onTapCancel() {
  //   print("tap cancel");
  //   // TODO: implement onTapCancel
  //   super.onTapCancel();
  // }

  void changeView(GameView view) {
    this._curView = view;
  }
}
