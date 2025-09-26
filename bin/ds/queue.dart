import 'dart:io';

class Item {
  int data;
  Item? next;
  Item(this.data);
}

void main() {

  final queue = Queue();
  queue.enqueue(10);
  queue.enqueue(20);
  queue.dequeue();
  queue.enqueue(30);
  queue.enqueue(40);
  queue.enqueue(50);
}

class Queue {
  Item? item;

  void enqueue(int data){
    /// Queue is empty
    if(item == null){
      item = Item(data);
      return;
    }

    /// Insert at last
    Item? pointer = item;
    while(pointer?.next != null){
      final current = pointer?.next;
      pointer = current;
    }
    pointer?.next = Item(data);
    display();
  }

  void dequeue(){
    if(item == null){
      print("Queue is empty");
      return;
    }

    /// Remove first item
    Item? pointer = item;
    if(pointer?.next != null){
      while(pointer?.next != null){
        final current = pointer?.next;
        item = current;
        display();
        return;
      }
    }
    /// Queue have only one item
    else{
      item = null;
    }
    display();
  }

  void display() {
    print("");
    if(item == null){
      print("Queue is empty");
      return;
    }

    /// display all item
    Item? pointer = item;
    stdout.write("Queue: ${pointer?.data}");
    while(pointer != null){
      final current = pointer.next;
      pointer = current;
      stdout.write(" <-- ");
      stdout.write("${pointer?.data}");
    }
  }
}