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
  
  void display (int  n){
    int k=0, h=height/n;
    for (int i=0;i<n;i++){
      for(int j=0;j<=i;j++){
        color c = color(map(k+1,compute(0),compute(n),0,255),map(i,0,n-1,0,255),map(j,0,i+1,0,255));
        fill(c);
        rect(h*j,h*i,h,h);
        k++;
      }
    }
    textSize(10);
    fill(0);
    text(this.author(),300,50,350,200);
    text(this.description(),300,80,400,600);
  }  
}