import 'package:bonfire/bonfire.dart';
import 'package:pacman/sprites/players/pacman_sprite_sheet.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2 position)
      : super(
          size: Vector2(32, 32),
          position: position,
          animation: SimpleDirectionAnimation(
              idleLeft: PacManSpriteSheet.pacManIdleLeft,
              idleRight: PacManSpriteSheet.pacManIdleRight,
              runLeft: PacManSpriteSheet.pacManRunLeft,
              runRight: PacManSpriteSheet.pacManRunRight,
              idleUp: PacManSpriteSheet.pacManIdleUp,
              runUp: PacManSpriteSheet.pacManRunUp,
              idleDown: PacManSpriteSheet.pacManIdleDown,
              runDown: PacManSpriteSheet.pacManRunDown),
        ) {
    setupCollision(
        CollisionConfig(collisions: [CollisionArea.circle(radius: 14)]));
  }

  @override
  void die() {
    super.die();
  }

  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    //audio
    animation?.playOnce(PacManSpriteSheet.showDamagePicture, runToTheEnd: true,
        onFinish: () {
      removeFromParent();
    });
    super.receiveDamage(attacker, damage, identify);
  }
}
