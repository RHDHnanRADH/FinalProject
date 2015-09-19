int fibonacci(int n){
  int actual =0, anterior = 0, cuenta = 0, suma =0;
  if (n ==0){
    return 0; 
  }
  else {
    actual = 1;
    anterior = 0;
    cuenta = 1;
    while (cuenta < n){
      suma = actual + anterior;
      anterior = actual;
      actual = suma;
      cuenta = cuenta + 1;
    }
  }
  return actual;
}

void drawSquare (int l, int le, int j){
    int x1=0;
    rect(0,0,l,l);
}
void setup(){
  size(900,900);
  int fibo = 14, j =0;
  for(int i=fibo; i>=0; i--){
    drawSquare(fibonacci(i), fibonacci(i+1),j);
    j++;
  }
}