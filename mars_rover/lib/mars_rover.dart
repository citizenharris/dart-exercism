import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';

class MarsRover {
  Compass compass;

  MarsRover(Engine engine, this.compass);

  int x = 0;
  int y = 0;

  String move(String commands) {
    commands.split('').forEach((command) {
      if (_isMove(command)) {
        y += 1;
      }
      if (_isLeft(command)) {
        compass.turnLeft();
      }
      if (_isRight(command)) {
        compass.turnRight();
      }
    });
    return "$x:$y:${compass.getDirection()}";
  }

  _isMove(String command) {
    const MOVE = "M";
    return command == MOVE;
  }

  _isLeft(String command) {
    const LEFT = "L";
    return command == LEFT;
  }

  _isRight(String command) {
    const RIGHT = "R";
    return command == RIGHT;
  }
}
