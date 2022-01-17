import 'package:flutter_test/flutter_test.dart';
import 'package:mars_rover/compass.dart';
import 'package:mars_rover/engine.dart';
import 'package:mars_rover/mars_rover.dart';

void main() {
  test("Rover should initialise facing North", () {
    var rover = MarsRover(Engine(), Compass());
    expect(rover.move(""), "0:0:N");
  });
}
