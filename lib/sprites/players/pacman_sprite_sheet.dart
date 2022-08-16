import 'package:bonfire/bonfire.dart';

class PacManSpriteSheet {
  static Future<SpriteAnimation> get pacManIdleLeft => SpriteAnimation.load(
      'characters/players/pacman_left.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManIdleRight => SpriteAnimation.load(
      'characters/players/pacman_right.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManIdleUp => SpriteAnimation.load(
      'characters/players/pacman_up.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManIdleDown => SpriteAnimation.load(
      'characters/players/pacman_down.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunDown => SpriteAnimation.load(
      'characters/players/pacman_down.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunUp => SpriteAnimation.load(
      'characters/players/pacman_up.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunRight => SpriteAnimation.load(
      'characters/players/pacman_right.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get pacManRunLeft => SpriteAnimation.load(
      'characters/players/pacman_left.png',
      SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));

  static Future<SpriteAnimation> get showDamagePicture => SpriteAnimation.load(
      'characters/players/pacman_damage.png',
      SpriteAnimationData.sequenced(
          amount: 11,
          stepTime: 0.2,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0)));
}
