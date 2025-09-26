import 'dart:io';

class BinaryNode {
  final int value;
  BinaryNode? left;
  BinaryNode? right;

  BinaryNode({required this.value});
}

void main() {
  BinaryTree tree = BinaryTree();
  print("------");
  print("Lookup");
  print("------");
  tree.lookup(10);

  tree.insert(10);
  tree.insert(20);
  tree.insert(30);
  tree.insert(40);

  print("------");
  print("Lookup");
  print("------");
  tree.lookup(10);
  tree.lookup(5);
  tree.lookup(40);
}

class BinaryTree {
  BinaryNode? node;

  void insert(int value) {
    /// Case: Empty
    if (this.node == null) {
      this.node = BinaryNode(value: value);
      return;
    }

    /// Get first node
    BinaryNode? node = this.node;

    /// Case: Not Empty
    while (node != null) {
      /// Check insert value is less than node.value
      /// Move to left
      if (value < node.value) {
        if (node.left == null) {
          node.left = BinaryNode(value: value);
          return;
        }
        node = node.left;
      }
      /// Move to right
      else {
        if (node.right == null) {
          node.right = BinaryNode(value: value);
          return;
        }
        node = node.right;
      }
    }
  }

  void lookup(int value) {
    /// Case: Empty
    if (this.node == null) {
      print("Tree is empty");
      return;
    }

    /// Get first node
    BinaryNode? node = this.node;

    /// Case: Not Empty
    while (node != null) {
      /// Check given value is less than node.value
      if (value == node.value) {
        print("${node.value} is found");
        return;
      }

      /// Move to left
      if (value < node.value) {
        if (node.left == null) {
          print("${value} is not in tree");
          return;
        }
        node = node.left;
      }
      /// Move to right
      else {
        if (node.right == null) {
          print("${value} is not in tree");
          return;
        }
        node = node.right;
      }
    }
  }

  /*void display() {
    /// Case: Empty
    if (this.node == null) {
      print("Tree is empty");
      return;
    }

    /// Case: Not Empty
    while (node != null) {



    }
  }*/
}
