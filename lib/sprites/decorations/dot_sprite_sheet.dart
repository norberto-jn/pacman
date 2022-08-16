import 'package:bonfire/bonfire.dart';

class DotDecorationSpriteSheet {
  static Future<Sprite> get dot => Sprite.load(
      'map/dot.png',
      srcPosition: Vector2(0, 0),
      srcSize: Vector2(4, 4)
  );
}
