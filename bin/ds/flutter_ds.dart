import 'dart:collection';
import 'dart:ffi';

void main(){
  List<int> list = [];
  Set<String> set = {};
  Map<int,String> map = {};
  Queue<int> queue = Queue();

  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  print(list);

  set.add("1");
  set.add("2");
  set.add("3");
  set.add("3");
  print(set);

  map[1] = "anandha";
  map[2] = "anandha";
  map[3] = "anandha";
  map[3] = "anandha";
  print(map);

  queue.add(1);
  queue.add(2);
  queue.add(3);
  queue.add(4);
  print(queue);
  queue.removeLast();
  print(queue);
}