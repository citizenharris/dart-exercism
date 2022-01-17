import 'package:flutter_test/flutter_test.dart';
import 'package:mars_rover/compass.dart';
import 'package:mars_rover/directions.dart';

void main() {
  group("Compass unit tests", () {
    test("Compass tells you the current direction", () {
      var compass = Compass(Direction.north);
      expect(compass.getDirection(), "N");
    });

    var leftTestCases = {
      Direction.north: "W",
      Direction.west: "S",
      Direction.south: "E",
      Direction.east: "N"
    };
    leftTestCases.forEach((currentDirection, expectedDirection) {
      test("Compass tells you what's left of $currentDirection", () {
        var compass = Compass(currentDirection);
        expect(compass.turnLeft(), expectedDirection);
      });
    });
  });
}