import 'package:bonfire/bonfire.dart';
import 'package:pacman/game_sprite_sheet.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2 position)
      : super(
          size: Vector2(32, 32),
          position: position,
          animation: SimpleDirectionAnimation(
              idleLeft: GameSpriteSheet.pacManIdleLeft,
              idleRight: GameSpriteSheet.pacManIdleRight,
              runLeft: GameSpriteSheet.pacManRunLeft,
              runRight: GameSpriteSheet.pacManRunRight),
        ) {
    setupCollision(
        CollisionConfig(collisions: [CollisionArea.circle(radius: 14)]));
  }

  @override
  void die() {
    PacMan(position);
    super.die();
  }

  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    //audio
    animation?.playOnce(GameSpriteSheet.showDamagePicture, runToTheEnd: true,
        onFinish: () {
      removeFromParent();
    });
    super.receiveDamage(attacker, damage, identify);
  }

  
}
