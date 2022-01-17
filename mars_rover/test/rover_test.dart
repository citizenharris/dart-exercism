import 'package:flutter_test/flutter_test.dart';
import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';
import 'package:mars_rover/mars_rover.dart';

void main() {
  group("Mars Rover unit tests", () {
    test("Rover should initialise facing North", () {
      var rover = MarsRover(Engine(), Compass());
      expect(rover.move(""), "0:0:N");
    });

    test("Rover should move forward 1 square", () {
      var rover = MarsRover(Engine(), Compass());
      expect(rover.move("M"), "0:1:N");
    });

    test("Rover should move 2 squares forwards", () {
      var rover = MarsRover(Engine(), Compass());
      expect(rover.move("MM"), "0:2:N");
    });
  });
}
