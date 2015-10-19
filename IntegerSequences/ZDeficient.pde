class Deficient extends Sequence {
  int compute (int n){
    int[] defi = new int[n]; int i=0, d=1;
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
    for(int i=1; i<=n; i++){
      color c = color(map(compute(i),compute(1),compute(n),0,255));
      fill(c);
      rect((i-1)*h,0,h,map(compute(i),1,compute(n),1,height));
    }
    textSize(10);
    fill(0);
    text(this.author(),50,500,150,70);
    text(this.description(),50,520,400,600);
  }
}