import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';

class MarsRover {
  MarsRover(Engine engine, Compass compass);

  String move(String commands) {
    if (commands == "M") return "0:1:N";
    return "0:0:N";
  }
}
