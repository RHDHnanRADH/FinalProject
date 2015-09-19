/*Este código está diseñado para simular los números triangulares.
Según Wikipedia, un enésimo número triangular es aquel que puede recomponerse en la forma de un triángulo equilátero de lado n.
Este código muestra el enésimo término triangular, así como un arreglo de enteros que muestra los n términos triangulares.
Para la parte gráfica, se muestra sólo el triángulo formado por el enésimo número triangular.*/

int triangular (int n){
  int t=n*(n+1)/2;
  return t;
}

int[] triangArray (int n){
  int[] trang = new int[n+1];
  for(int i=0; i<n+1; i++){
    trang[i] = triangular(i);
  }
  return trang;
}
void setup(){
  size(1000,1000);
//'x' es el enésimo número triangular, 'k' es un contador para los cuadrados puestos en el canvas.
//Al terminar el proceso, los números 'k' y 'triangular(x)' deben ser iguales.
  int h=20, x= 25, k=0;
  for (int i=0;i<x;i++){
    for(int j=0;j<=i;j++){
      color c = color(10*i,10*j,triangular(i));
      fill(c);
      rect(h*j,h*i,h,h);
      k++;
    }
  }
  println("Contador:",k,"Término",x,"triangular:",triangular(x));
}