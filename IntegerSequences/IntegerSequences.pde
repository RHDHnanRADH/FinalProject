import controlP5.*;

// Object declaration
Sequence sequence;
boolean bool = true;
ControlP5 cp5;
String deff; int x = 23;

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

//Al hacer clic con el mouse, el objeto varía de clase
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