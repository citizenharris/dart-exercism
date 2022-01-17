import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';

class MarsRover {
  MarsRover(Engine engine, Compass compass);

  int x = 0;
  int y = 0;

  String move(String commands) {
    commands.split('').forEach((command) {
      if (command == "M") {
        y += 1;
      }
    });
    return "$x:$y:N";
  }
}
