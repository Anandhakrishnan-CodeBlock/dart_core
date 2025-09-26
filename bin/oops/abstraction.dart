import 'dart:math' as math;

/// We know only what to do ! but don't know how it is doing
/// Hiding essential functionality with outside world
/// Also Hiding Function

abstract class Abstraction{

  void squareArea({required double side1, required double side2});

  void rectangleArea({required double length, required double width});

  void circleArea({required double radius});

  void triangleArea({required double base,required double height});
}

class AbstractionImplementation implements Abstraction {
  @override
  void circleArea({required double radius}) {
    final result = math.pi * radius * radius;
    print("Area of circle: $result");
  }

  @override
  void rectangleArea({required double length, required double width}) {
    final result = length * width;
    print("Area of rectangle: $result");
  }

  @override
  void squareArea({required double side1, required double side2}) {
    final result = side1 * side2;
    print("Area of square: $result");
  }

  @override
  void triangleArea({required double base, required double height}) {
    final result = 0.5 * base * height;
    print("Area of triangle: $result");
  }
}