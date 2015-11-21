import controlP5.*;
import ketai.ui.*;

ArrayList Patients = new ArrayList();
ControlP5 cp1, cp2, cp3; 
int page;
PFont pfont;
//Configuration config = getResources().getConfiguration();

void setup (){
  cp1 = new ControlP5(this);
  cp2 = new ControlP5(this);
  creatingCp1();
  creatingCp2();
  page=0;
}

void draw(){
  background(225);
  pageSelect();
}

public void NewPatient(){
  page = 1;
}

/*public void Registrar(){
  Patient patient = new Patient(cp2.get(Textfield.class,"Nombre").getText(),
                                cp2.get(Textfield.class,"Apellidos").getText(),
                                cp2.get(Textfield.class,"Documento de identidad").getText(),
                                int(cp2.get(Textfield.class,"Dia").getText()),
                                int(cp2.get(Textfield.class,"Mes").getText()),
                                int(cp2.get(Textfield.class,"Año").getText()));
}*/

public void ModifyPatient(){
  page = 2;
}

public void Regresar(){
  page = 0;
}



void pageSelect(){
 switch(page) {
   case(0):
     init();
     break;
     
   case(1):
     NPPage();
     break;
     
   case(2):
     //MPPage();
     break;
     
   case(3):
     
     break;
 } 
}


void NPPage(){
  cp1.setVisible(false);
  cp2.setVisible(true);
  //Patients.add(patient);
}

void init(){
  cp1.setVisible(true);
  cp2.setVisible(false);
}

void creatingCp1(){
  cp1.addButton("NewPatient")
    .setLabel("Register")
    .setValue(128)
    .setPosition(0.5*width-(0.375*width),0.2*height)
    .setSize(int(0.75*width),int(0.08*height));
  cp1.addButton("ModifyPatient")
    .setLabel("Modify Data")
    .setValue(128)
    .setPosition(0.5*width-(0.375*width),0.3*height)
    .setSize(int(0.75*width),int(0.08*height));
  cp1.addButton("ConsultPatient")
    .setLabel("Consult Data")
    .setValue(128)
    .setPosition(0.5*width-(0.375*width),0.4*height)
    .setSize(int(0.75*width),int(0.08*height));
    
  pfont = createFont("Arial",int(0.08*height-30),true); // use true/false for smooth/no-smooth
  ControlFont font = new ControlFont(pfont,33);
  
  cp1.getController("NewPatient")
     .getCaptionLabel()
     .setFont(font)
     .setSize(int(0.08*height-30))
     .toUpperCase(false);
  cp1.getController("ModifyPatient")
     .getCaptionLabel()
     .setFont(font)
     .toUpperCase(false);
  cp1.getController("ConsultPatient")
     .getCaptionLabel()
     .setFont(font)
     .toUpperCase(false);  
}

void creatingCp2(){
  pfont = createFont("Arial",int(0.08*height-30),true); // use true/false for smooth/no-smooth
  ControlFont font = new ControlFont(pfont,33);


  cp2.addTextfield("Nombre")
    .setPosition(0.05*width, 0.05*height)
    .setSize(int(0.75*width),int(0.06*height))
    .setAutoClear(false);
  cp2.addTextfield("Apellidos")
    .setPosition(0.05*width, 0.15*height)
    .setSize(int(0.75*width),int(0.06*height))
    .setAutoClear(false);
  cp2.addTextfield("Documento de Identidad")
    .setPosition(0.05*width, 0.25*height)
    .setSize(int(0.75*width),int(0.06*height))
    .setFont(font)
    .setAutoClear(false);
  cp2.addTextfield("Dia")
    .setPosition(0.05*width, 0.35*height)
    .setSize(int(0.25*width),int(0.06*height))
    .setAutoClear(false);
  cp2.addTextfield("Mes")
    .setPosition(0.32*width, 0.35*height)
    .setSize(int(0.25*width),int(0.06*height))
    .setAutoClear(false);
  cp2.addTextfield("año")
    .setPosition(0.59*width, 0.35*height)
    .setSize(int(0.25*width),int(0.06*height))
    .setAutoClear(false);
  cp2.addButton("Regresar")
    .setPosition(0.5625*width,0.93*height)
    .setSize(int(0.42*width),int(0.05*height));
 
  cp2.getController("Regresar")
     .getCaptionLabel()
     .setFont(font)
     .toUpperCase(false);
     
    
}

void creatingCp3(){
  
}