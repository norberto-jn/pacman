import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get pacManIdleLeft => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(96, 0)));

  static Future<SpriteAnimation> get pacManIdleRight => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunRight => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunLeft => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(96, 0)));

  static Future<SpriteAnimation> get showDamagePicture => SpriteAnimation.load(
      'sprites.png',
      SpriteAnimationData.sequenced(
          amount: 11,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 32)));
}
