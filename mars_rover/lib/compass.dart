// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'directions.dart';

class Compass {
  Direction _currentDirection;
  final Map<Direction, Direction> _leftMap = {
    Direction.north: Direction.west,
    Direction.west: Direction.south,
    Direction.south: Direction.east,
    Direction.east: Direction.north
  };

  final Map<Direction, Direction> _rightMap = {
    Direction.north: Direction.east,
    Direction.west: Direction.north,
    Direction.south: Direction.west,
    Direction.east: Direction.south
  };

  Compass(this._currentDirection) {
    if (!_leftMap.containsKey(_currentDirection)) {
      throw ArgumentError("Unknown direction");
    }
  }

  getDirection() => _directionToString(_currentDirection);

  turnLeft() {
    _currentDirection = _leftMap[_currentDirection]!;
    return _directionToString(_currentDirection);
  }

  turnRight() {
    _currentDirection = _rightMap[_currentDirection]!;
    return _directionToString(_currentDirection);
  }



  _directionToString(Direction direction) {
    switch (direction) {
      case Direction.north:
        return "N";
      case Direction.west:
        return "W";
      case Direction.south:
        return "S";
      case Direction.east:
        return "E";
    }
  }
}
