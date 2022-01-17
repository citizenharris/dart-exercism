import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';

class MarsRover {
  MarsRover(Engine engine, Compass compass);

  int x = 0;
  int y = 0;
  String direction = Direction.north();

  String move(String commands) {
    commands.split('').forEach((command) {
      if (isMove(command)) {
        y += 1;
      }
      if (command == "L") {
        direction = Direction.west();
      }
    });
    return "$x:$y:$direction";
  }

  isMove(String command) {
    const MOVE = "M";
    return command == MOVE;
  }

  isLeftCommand(String command) {
    const LEFT = "L";
    return command == LEFT;
  }
}


class Direction {
  static String north() => "N";

  static String west() => "W";
}
