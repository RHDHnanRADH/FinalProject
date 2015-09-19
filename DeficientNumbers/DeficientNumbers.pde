/*Este código está diseñado para simular los números deficientes.
Un número deficiente es aquel que cumple la condición sigma(n)<2n, donde sigma(n) es la suma de los divisores de n.
Este código muestra un arreglo con los n primeros números deficientes.
Para la parte gráfica, se muestra rectángulos distribuidos uniformemente, con altura igual al número deficiente del 1 al término n.*/
int[] deficient (int n){
  int[] defi = new int[n];
  int i=0, d=1;
  while(i<n){
    int def = 0;
    for(int j=1;j<=d;j++){
      if(d%j==0){
        def=def+j;
      }
    }
    if(def<2*d){
      defi[i]=d;
      i++;
    }
    d++;
  }
  return defi;
}

void setup(){
  size(1000,750);
  int x=100, h= width/x;
  int[] defi = deficient(x);
  for(int i=0; i<x; i++){
    color c = color(defi[i],i,5*i);
    fill(c);
    rect(i*h,0,h,defi[i]);
    println(defi[i]);
  }
}