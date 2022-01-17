class Leap {
  bool leapYear(int year) {
    if (_divisibleBy100(year) && _notDivisibleBy400(year)) {
      return false;
    }

    return _divisibleBy4(year);
  }

  bool _divisibleBy100(int year) => year % 100 == 0;
  bool _notDivisibleBy400(int year) => year % 400 != 0;
  bool _divisibleBy4(int year) => year % 4 == 0;
}
