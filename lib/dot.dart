import 'package:bonfire/bonfire.dart';
import 'package:pacman/pac_man.dart';
import 'package:pacman/sprites/decorations/dot_sprite_sheet.dart';

class Dot extends GameDecoration with ObjectCollision, Sensor {
  var count = 0;
  Dot(Vector2 position)
      : super.withSprite(
            sprite: DotDecorationSpriteSheet.dot,
            position: position,
            size: Vector2(4, 4)) {
    setupSensorArea(areaSensor: [
      CollisionArea.rectangle(
        size: Vector2(4, 4),
      ),
    ]);
  }

  @override
  void update(double dt) {
    seeComponentType<PacMan>(
        observed: (player) {
          removeFromParent();
        },
        radiusVision: 2);
    super.update(dt);
  }

  @override
  void onContact(GameComponent component) {}
}
