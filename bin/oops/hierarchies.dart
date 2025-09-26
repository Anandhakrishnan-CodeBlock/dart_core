mixin Logger {
  void log(String message) {
    print('Parent Log: $message');
  }
}

class Sample {
  void display(String message) {
    print('Parent Display: $message');
  }
}

class MyClass extends Sample with Logger, Logger {
  @override
  void log(String message) {
    print('Log: $message');
    super.log(message);
  }
  @override
  void display(String message) {
    print('Display: $message');
    super.display(message);
  }
}

void main(){
  final data = MyClass();
  data.log("Test");
  data.display("Test");
}