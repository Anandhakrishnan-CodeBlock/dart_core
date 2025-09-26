/// Restrict access the original data
/// showing only the function rater than directly manipulating data
class Encapsulation {

  final List<int> _list = [];
  List get list => _list;


  void add({required int item}){
    _list.add(item);
    print(list);
  }

  void removeAt({required int index}){
    _list.removeAt(index);
    print(list);
  }
}