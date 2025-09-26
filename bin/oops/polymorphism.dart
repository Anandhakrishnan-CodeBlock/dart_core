class Shape {
  void draw() {
    print("Drawing a shapes");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a circle");
    super.draw();
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a square");
    super.draw();
  }
}

void main(){
  final s = Square();
  s.draw();
}