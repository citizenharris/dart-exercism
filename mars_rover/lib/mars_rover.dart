import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';

class MarsRover {
  MarsRover(Engine engine, Compass compass);

  String move(String commands) {
    return "0:0:N";
  }
}
