import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flame_game_base/jetpack_game.dart';

enum PlayerMovementMode {
  IDLE,
  CHARGING,
  LAUNCHING,
}

class Player extends SpriteComponent with HasGameRef<JetpackGame> {
  static double gravity = 9.8 / 2;

  static Vector2 originUnitVec = Vector2(1, 0);

  PlayerMovementMode movementMode = PlayerMovementMode.IDLE;

  Vector2 velocity = Vector2.all(0.0);

  Vector2 tapDownStart = Vector2.all(0.0);
  Vector2 curDragLoc = Vector2.all(0.0);
  double dragDirection = 0;

  Player() : super(size: Vector2.all(32.0)) {}

  @override
  void update(double dt) {
    final gameRect = gameRef.size.toRect();
    switch (movementMode) {
      case PlayerMovementMode.IDLE:
        velocity.add(Vector2(0, dt * gravity));
        break;
      case PlayerMovementMode.CHARGING:
        velocity.add(Vector2(0, dt * gravity / 8));
        break;
      case PlayerMovementMode.LAUNCHING:
        // TODO: Handle this case.
        break;
    }
    if (gameRect.left >= position.x || gameRect.right <= position.x) {
      velocity.setValues(-velocity.x, velocity.y);
    }
    if (gameRect.bottom <= position.y) {
      velocity = Vector2.all(0);
    } else {
      move(velocity);
    }

    super.update(dt);
  }

  void move(Vector2 delta) {
    position.add(delta);
  }

  @override
  Future<void> onLoad() async {
    super.onLoad();
    anchor = Anchor.center;
    sprite = await gameRef.loadSprite('player.png');
    position = gameRef.size / 2;
  }

  @override
  void onGameResize(Vector2 gameSize) {
    // We don't need to set the position in the constructor, we can it directly here since it will
    // be called once before the first time it is rendered.
    position = gameSize / 2;
  }

  void startCharging(DragDownInfo info) {
    this.tapDownStart = Vector2.copy(info.eventPosition.game);
    this.velocity.setValues(velocity.x, 0);
    this.movementMode = PlayerMovementMode.CHARGING;
  }

  void releaseCharge() {
    this.movementMode = PlayerMovementMode.IDLE;

    final newVec =
        Vector2(curDragLoc.x - tapDownStart.x, curDragLoc.y - tapDownStart.y);
    print(newVec.normalized());
    this.velocity = newVec.normalized() * 10;
  }

  void onPanUpdate(DragUpdateInfo info) {
    curDragLoc = info.eventPosition.game;
    // final newVec = Vector2(info.eventPosition.game.x - tapDownStart.x,
    //     info.eventPosition.game.y - tapDownStart.y);
    //dragDirection = originUnitVec.angleToSigned(newVec);
  }
}
