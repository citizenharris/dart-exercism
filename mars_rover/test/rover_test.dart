import 'package:flutter_test/flutter_test.dart';
import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';
import 'package:mars_rover/mars_rover.dart';

void main() {
  group("Mars Rover unit tests", () {
    late MarsRover rover;
    setUp(() {
      rover = MarsRover(Engine(), Compass());
    });
    test("Rover should initialise facing North", () {
      expect(rover.move(""), "0:0:N");
    });

    var movementInputToExpect = {
      "M": "0:1:N",
      "MM": "0:2:N"
    };
    movementInputToExpect.forEach((input, expected) {
      test("Rover can move: given `$input` -> $expected", () {
        expect(rover.move(input), expected);
      });
    });

    var directionInputToExpect = {
      "L": "0:0:W"
    };
    directionInputToExpect.forEach((input, expected) {
      test("Rover can turn: given `$input` -> $expected", () {
        expect(rover.move(input), expected);
      });
    });
  });
}
