void main() {
  final stack = Stack();

  print("----");
  print("Push");
  print("----");
  stack.push(10);
  stack.display();
  print("----");
  print("Pop");
  print("----");
  stack.pop();
  stack.display();
  print("----");
  print("Push");
  print("----");
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.display();
  print("----");
  print("Pop");
  print("----");
  stack.pop();
  stack.display();
  print("----");
  print("Peak");
  print("----");
  stack.peak();
}

class Stack {
  List<int> stack = [];

  void push(int data) {
    stack.add(data);
  }

  void pop() {
    if (stack.isEmpty) {
      print("Stack is empty");
      return;
    }
    /// Remove at top
    int i = stack.length - 1;
    stack.removeAt(i);
  }

  void display() {
    if (stack.isEmpty) {
      print("Stack is empty");
      return;
    }
    int i = stack.length - 1;
    while (i >= 0) {
      print("$i: ${stack[i]}");
      i--;
    }
  }

  void peak(){
    if(stack.isEmpty){
      print("Stack is empty");
      return;
    }
    /// Get top element
    int i = stack.length - 1;
    print("P: ${stack[i]}");
  }
}
