class Node {
  int data;
  Node? next;
  Node(this.data);
}

void main(){

  Node node = Node(10);
  Node node2 = Node(20);
  Node node3 = Node(30);

  node.next = node2;
  node2.next = node3;

  Node? temp = node;
  while(temp != null){
    print(temp.data);
    temp = temp.next;
  }
}