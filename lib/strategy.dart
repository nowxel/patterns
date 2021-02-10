void main() {
  final circleShape = Shape(ShapeType.circle);
  final trapezeShape = Shape(ShapeType.trapeze);
  circleShape.draw();
  trapezeShape.draw();
}

enum ShapeType {
  trapeze,
  circle
}

abstract class Shape{
  factory Shape(ShapeType type) {
    switch (type){
      case ShapeType.trapeze: return Trapeze();
      case ShapeType.circle: return Circle();
      default: return null;
    }
  }
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Circle");
  }
}

class Trapeze implements Shape {
  @override
  void draw() {
    print("Trapeze");
  }
}