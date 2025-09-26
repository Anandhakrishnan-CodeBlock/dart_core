class Sample {
  int i;
  Sample(this.i);
}

void main(){
  Sample sample = Sample(1);
  Sample sample2 = sample;

  sample2.i = 10;
  print(sample.i);
}