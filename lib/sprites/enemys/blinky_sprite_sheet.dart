import 'package:bonfire/bonfire.dart';

class BlinkySpriteSheet {
  static Future<SpriteAnimation> get pacManIdleLeft => SpriteAnimation.load(
      'characters/enemys/enemys_all.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManIdleRight => SpriteAnimation.load(
      'characters/enemys/enemys_all.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunRight => SpriteAnimation.load(
      'characters/enemys/enemys_all.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunLeft => SpriteAnimation.load(
      'characters/enemys/enemys_all.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));
}
