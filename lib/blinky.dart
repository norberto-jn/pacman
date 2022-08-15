import 'package:bonfire/bonfire.dart';
import 'package:pacman/blinky_sprite_sheet.dart';
import 'package:pacman/main.dart';

class Blinky extends SimpleEnemy with ObjectCollision {
  Blinky(Vector2 position)
      : super(
          size: Vector2(32, 32),
          position: position,
          speed: 60,
          animation: SimpleDirectionAnimation(
              idleLeft: BlinkySpriteSheet.pacManIdleLeft,
              idleRight: BlinkySpriteSheet.pacManIdleRight,
              runLeft: BlinkySpriteSheet.pacManRunLeft,
              runRight: BlinkySpriteSheet.pacManRunRight),
        ) {
    setupCollision(
        CollisionConfig(collisions: [CollisionArea.circle(radius: 14)]));
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        _executeAttack();
        
      },
      radiusVision: tileSize * 100000,
      margin: 0,
    );

    seePlayer(

      observed: (player) {
        _executeAttack();
      },

      radiusVision: tileSize

    );

    super.update(dt);
  }

  void _executeAttack() {
    simpleAttackMelee(damage: 100, size: Vector2(tileSize, tileSize));
  }
}
