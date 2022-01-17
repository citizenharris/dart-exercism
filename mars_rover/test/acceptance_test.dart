import 'package:flutter_test/flutter_test.dart';
import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';
import 'package:mars_rover/mars_rover.dart';

void main() {
  group("Mars Rover acceptance tests", () {
    test("Rover can move and turn", () {
      var engine = Engine();
      var compass = Compass();
      var rover = MarsRover(engine, compass);
      expect(rover.move("MMRMMLM"), "2:3:N");
    });
  });
}
