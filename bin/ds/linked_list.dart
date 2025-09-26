class Node {
  int data;
  Node? next;
  Node(this.data);
}

void main(){

  final linkedList = LinkedList();
  print("---");
  print("Add");
  print("---");
  linkedList.add(10);
  linkedList.add(30);
  linkedList.display();
  print("------");
  print("Update");
  print("------");
  linkedList.update(1,20);
  linkedList.display();
  print("---");
  print("Add");
  print("---");
  linkedList.add(30);
  linkedList.add(40);
  linkedList.display();
  print("------");
  print("Delete");
  print("------");
  linkedList.delete(2);
  linkedList.display();
  print("------");
  print("Insert");
  print("------");
  linkedList.insert(2,30);
  linkedList.display();
  print("------");
  print("Insert");
  print("------");
  linkedList.insert(4,50);
}

class LinkedList {
  Node? node;
  int size = 0;

  void add(int data) {

    /// Check list is empty
    if(node == null){
      node = Node(data);
      size++;
      return;
    }

    /// Get list element one by one and add at last
    var nodePointer = node;
    while(nodePointer?.next != null){
      /// Shifting pointer to next
      final node = nodePointer?.next;
      nodePointer = node;
    }
    nodePointer?.next = Node(data);
    size++;
  }

  void update(int index, int data) {

    /// Check list is empty
    if(node == null){
      node = Node(data);
      return;
    }

    int i = 0;
    /// Find the item
    var nodePointer = node;
    while(nodePointer != null){
      /// check index
      if(i == index) {
        nodePointer.data = data;
        return;
      }
      /// Shifting pointer to next
      final node = nodePointer.next;
      nodePointer = node;
      i++;
    }
  }

  void delete(int index) {
    /// Check list is empty
    if (node == null) {
      print("List is empty");
      return;
    }

    /// Find the item
    var nodePointer = node;
    Node? previousPointer = null;
    int i = 0;
    while (nodePointer != null) {
      /// Fid the index
      if (i == index) {
        /// if it is mid element
        if (nodePointer.next != null) {
          previousPointer?.next = nodePointer.next;
          size--;
          return;
        }
        /// if it is last element
        else{
          previousPointer?.next = null;
          size--;
          return;
        }
      }

      /// Shifting pointer to next
      final node = nodePointer.next;
      previousPointer = nodePointer;
      nodePointer = node;
      i++;
    }
  }

  void insert(int index, int data) {

    /// Check insert position
    if(index >= size){
      print("You can't insert at $index ! Use add option to add.");
      return;
    }
    /// Check list is empty
    if (this.node == null) {
      print("List is empty");
      return;
    }

    /// Find the item
    var nodePointer = this.node;
    Node? previousPointer = null;
    Node? nextPointer = null;
    int i = 0;

    while(nodePointer != null) {
      if(i == index){
        nextPointer = nodePointer;
        nodePointer = Node(data);
        previousPointer?.next = nodePointer;
        nodePointer.next = nextPointer;
        size++;
        return;
      }

      /// Shifting pointer to next
      final node = nodePointer.next;
      previousPointer = nodePointer;
      nodePointer = node;
      i++;
    }
  }

  void display(){

    /// Check list is empty
    if(node == null){
      print("List is empty");
      return;
    }

    /// Get list element one by one and display
    var nodePointer = node;
    var i = 0;
    print("$i: ${nodePointer?.data}");
    i++;
    while(nodePointer?.next != null){
      final node = nodePointer?.next;
      nodePointer = node;
      print("$i: ${nodePointer?.data}");
      i++;
    }
    print("Size: ${size}");
  }
}