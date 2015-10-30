class Triangular extends Sequence{
  int compute (int n){
    int t = n*(n+1)/2;
    return t;
  }
  
  String author (){
    return "Author: Arquimedes";
  }
  
  String description(){
    return "A triangular number or triangle number counts the objects that can form an equilateral triangle. The nth triangle number is the number of dots composing a triangle with n dots on a side, and is equal to the sum of the n natural numbers from 1 to n.";
  }
  //Genera la cantidad de cuadrados necesaria para igualar el valor del enésimo término triangular. Se muestra un triángulo n cuadrados de altura, n cuadrados de ancho.
  void display (int  n){
    int k=0, h=height/n;
    int[] triang = toArray(n);
    for (int i=0;i<n;i++){
      for(int j=0;j<=i;j++){
        colorMode(RGB,255);
        color c = color(map(k+1,triang[0],triang[n-1],0,255),map(i,0,n-1,0,255),map(j,0,i+1,0,255));
        fill(c);
        rect(h*j,h*i,h,h,i);
        k++;
      }
    }
    textSize(10);
    fill(0);
    text(this.author(),300,50,350,200);
    text(this.description(),300,80,400,600);
  }  
}