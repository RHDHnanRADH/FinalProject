class Juggler extends Sequence{
  //Constructor con a_0=n
  Juggler(int n){
    jg=n;
  }
  int[] jug;
  int jg;
  int compute (int n){
    jug = new int[n];
    jug[0]=jg;
    for(int i=1; i<n; i++){
      if(jug[i-1]%2==0){
        jug[i]=int(pow(jug[i-1],0.5));
      }else if(jug[i-1]%2==1){
        jug[i]=int(pow(jug[i-1],1.5));
      }
    }
    return jug[n-1];
  } 
  
  String author (){
    return "Author: Clifford A. Pickover";
  }
  
  String description(){
    return "The name is derived from the rising and falling nature of the sequences, like balls in the hands of a juggler. It's defined like follows: a_{k+1} = a_k^{0.5} if a_k is even, or a_k^{1.5} if a_k is odd";
  }
  
  void display (int  n){
    float h= width/n;
    compute(n);
    for(int i=0; i<n; i++){
      colorMode(HSB);
      color c = color(map(i,0,max(jug),0,359),300,300);
      fill(c);
      //Distribuye la altura de los triángulos, según los valores que hay en el arreglo
      triangle(i*h,height,(i+1)*h,height,((2*i)+1)*h/2,map(jug[i],max(jug),1,1,19*height/20));
    }
    textSize(10);
    fill(0);
    text(this.author(),300,100,150,70);
    text(this.description(),300,120,400,600);
  }
}