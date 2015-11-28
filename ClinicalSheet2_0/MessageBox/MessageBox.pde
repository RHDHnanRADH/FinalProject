import controlP5.*;

ControlP5 controlP5;
int messageBoxResult = -1;
ControlGroup messageBox;

void setup() {
  size(640,480);
  frameRate(30);
  controlP5 = new ControlP5(this);
  createMessageBox();
}

void draw() {
  if(messageBox.isVisible()) {
    background(50);
  } else {
    if(messageBoxResult==1) {
      background(0,255,0);
    } else {
      background(255,0,0);
    }
  }
}


void createMessageBox() {
  // create and set a ControlFont, in case the
  // the default controlP5 font is too small for you / the user
  //ControlFont font = new ControlFont(createFont("Arial",12),12);
  // if the size of controlP5's default pixel font is not
  // too small, disable the setControlFont command below.
  //controlP5.setControlFont(font);
  
  // create a group to store the messageBox elements
  messageBox = controlP5.addGroup("messageBox",width/2 - 150,100,300);
  messageBox.setBackgroundHeight(120);
  messageBox.setBackgroundColor(color(0,128));
  messageBox.hideBar();
  
  // add a TextLabel to the messageBox.
  Textlabel l = controlP5.addTextlabel("messageBoxLabel","Some MessageBox text goes here.",20,20);
  l.moveTo(messageBox);

  // add the OK button to the messageBox.
  // the name of the button corresponds to function buttonOK
  // below and will be triggered when pressing the button.
  controlP5.Button b1 = controlP5.addButton("buttonOK",0,65,80,80,24);
  b1.moveTo(messageBox);
  // by default setValue would trigger function buttonOK, 
  // therefore we disable the broadcasting before setting
  // the value and enable broadcasting again afterwards.
  // same applies to the cancel button below.
  b1.setBroadcast(false); 
  b1.setValue(1);
  b1.setBroadcast(true);
  b1.setCaptionLabel("OK");
  // centering of a label needs to be done manually 
  // with marginTop and marginLeft
  b1.getCaptionLabel().getStyle().marginTop = -2;
  b1.getCaptionLabel().getStyle().marginLeft = 26;
  
  // add the Cancel button to the messageBox. 
  // the name of the button corresponds to function buttonCancel
  // below and will be triggered when pressing the button.
  controlP5.Button b2 = controlP5.addButton("buttonCancel",0,155,80,80,24);
  b2.moveTo(messageBox);
  b2.setBroadcast(false);
  b2.setValue(0);
  b2.setBroadcast(true);
  b2.setCaptionLabel("Cancel");
  b2.getCaptionLabel().toUpperCase(false);
  b2.getCaptionLabel().getStyle().marginTop = -2;
  b2.getCaptionLabel().getStyle().marginLeft = 16;
}

// function buttonOK will be triggered when pressing
// the OK button of the messageBox.
void buttonOK(int theValue) {
  println("a button event from button OK.");
  messageBoxResult = theValue;
  messageBox.hide();
}
// function buttonCancel will be triggered when pressing
// the Cancel button of the messageBox.
void buttonCancel(int theValue) {
  println("a button event from button Cancel.");
  messageBoxResult = theValue;
  messageBox.hide();
}

void keyPressed() {
  // press space in case you need to show the messagebox again.
  if(key==' ') {
    messageBox.show();
  }
}