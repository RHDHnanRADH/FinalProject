// Object declaration
Sequence sequence;
boolean bool = true;
int x= 20;

void setup() {
  size(720,640);
  // Object init
  sequence = new Triangular();
}

void draw() {
  background(255);
  //object use
  sequence.display(x);
}

void mouseClicked(){
  if(bool){
    sequence = new Deficient();
    sequence.display(x);
    bool = false;
  }else if(!bool){
    sequence = new Triangular();
    sequence.display(x);
    bool = true;
  }
}