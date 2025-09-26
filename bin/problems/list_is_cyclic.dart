import 'dart:io';

class Node {
  int data;
  Node? next;

  Node(this.data);
}

void main() {
  Node? head = Node(10);
  head.next = Node(20);
  head.next?.next = Node(30);
  head.next?.next?.next = head;
  isListIsCyclic(head);

  Node? head1 = Node(10);
  head1.next = Node(20);
  head1.next?.next = Node(30);
  head1.next?.next?.next = Node(40);
  isListIsCyclic(head1);
}

void isListIsCyclic(Node? head){
  if (detectLoop(head)) {
    print(" It is a cyclic list");
  } else {
    print(" It is not cyclic list");
  }
}

bool detectLoop(Node? head) {
  Set<Node> st = {};

  if (head == null) {
    print("List Node's are empty");
    return false;
  }

  while (head != null) {

    stdout.write("${head.data}");

    if (st.contains(head)) {
      return true;
    }

    st.add(head);
    head = head.next;
    stdout.write(" --> ");
  }

  stdout.write("NULL");
  return false;
}
