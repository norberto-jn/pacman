import 'package:bonfire/bonfire.dart';
import 'package:bonfire/tiled/model/tiled_object_properties.dart';
import 'package:flutter/material.dart';
import 'package:pacman/blinky.dart';
import 'package:pacman/dot.dart';
import 'package:pacman/pac_man.dart';

double tileSize = 16;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(directional: JoystickDirectional()),
      map: TiledWorldMap('map/pacman_map.json', objectsBuilder: {
        'blinky': (TiledObjectProperties properties) =>
            Blinky(properties.position),
        'dot': (TiledObjectProperties properties) => Dot(properties.position)
      }),
      player: PacMan(Vector2(14 * tileSize, 29 * tileSize)),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        smoothCameraEnabled: true,
        sizeMovementWindow: Vector2(tileSize * 3, tileSize * 3),
      ),
      //showCollisionArea: true,
    );
  }
}
