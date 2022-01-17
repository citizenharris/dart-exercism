import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mars_rover/compass.dart';
import 'package:mars_rover/directions.dart';
import 'package:mars_rover/engine.dart';
import 'package:mars_rover/mars_rover.dart';

void main() {
  group("Mars Rover unit tests", () {
    late MarsRover northFacingRover;
    setUp(() {
      northFacingRover = MarsRover(Engine(), Compass(Direction.north));
    });
    test("Rover should initialise facing North", () {
      expect(northFacingRover.move(""), "0:0:N");
    });

    var moveTestCases = {
      "M": "0:1:N",
      "MM": "0:2:N"
    };
    moveTestCases.forEach((input, expected) {
      test("Rover can move: given `$input` -> $expected", () {
        expect(northFacingRover.move(input), expected);
      });
    });

    var turnLeftTestCases = {
      "L": "0:0:W",
      "LL": "0:0:S"
    };
    turnLeftTestCases.forEach((command, expectedPosition) {
      test("Rover can turn left: given `$command` -> $expectedPosition", () {
        expect(northFacingRover.move(command), expectedPosition);
      });
    });

    var turnRightTestCases = {
      "R": "0:0:E",
      "RR": "0:0:S"
    };
    turnRightTestCases.forEach((command, expectedPosition) {
      test("Rover can turn right: given $command -> $expectedPosition", () {
        expect(northFacingRover.move(command), expectedPosition);
      });
    });
  });
}
