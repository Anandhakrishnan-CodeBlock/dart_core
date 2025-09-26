import 'dart:collection';

void main(){
  HashMap<String,int> count = HashMap();
  String s = "Shirsh".toLowerCase();
  for(int i=0; i<s.length; i++){
    if(count.containsKey(s[i])){
      count.update(s[i], (value) => value + 1);
    }else{
      count[s[i]] = 1;
    }
  }
  print(count);
}