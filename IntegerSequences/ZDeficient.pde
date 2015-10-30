class Deficient extends Sequence {
  int[] defi;
  int compute (int n){
    //'i' es el índice del arreglo 'defi', 'def' es la suma de los divisores de 'd', que es el número a indagar para saber si es o no un número deficiente.
    defi = new int[n]; int i=0, d=1;
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
    return defi[n-1];
  }
  
  String author (){
    return "Error 404: Author not found";
  }
  
  String description(){
    return "In number theory, a deficient or deficient number is a number n for which the sum of divisors σ(n)<2n, or, equivalently, the sum of proper divisors (or aliquot sum) s(n)<n. The value 2n − σ(n) (or n − s(n)) is called the number's deficiency.";
  }
  
  void display (int  n){
    float h= width/n;
    compute(n);
    for(int i=0; i<n; i++){
      colorMode(RGB,255);
      color c = color(map(defi[i],1,defi[n-1],0,255));
      fill(c);
      //Distribuye la altura del rectángulo, según los valores en el arrego
      rect((i-1)*h,0,h,map(defi[i],1,defi[n-1],1,height-1));
    }
    textSize(10);
    fill(0);
    text(this.author(),50,500,150,70);
    text(this.description(),50,520,400,600);
  }
}