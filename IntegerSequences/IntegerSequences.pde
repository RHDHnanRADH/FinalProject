import controlP5.*;

// Object declaration
Sequence sequence;
boolean bool = true;
ControlP5 cp5;
String deff; 
int x = 23, y=0, jg=30;
//'jg' corresponde al coeficiente inicial, a_0, de la serie Juggler
void setup() {
  size(720,640);
  // Object init
  sequence = new Juggler(jg);
}

void draw() {
  background(255);
  //object use
  sequence.display(x);
}

//Al hacer clic con el mouse, el objeto varía de clase
void mouseClicked(){
  y++;
  if(y==3){
    y=0;
  }
  switch(y){
    case 0:{
      sequence = new Juggler(jg);
      sequence.display(x);
      break;
    }
    case 1:{
      sequence = new Triangular();
      sequence.display(x);
      break;
    }
    case 2:{
      sequence = new Deficient();
      sequence.display(x);
      break;
    }
  }
}