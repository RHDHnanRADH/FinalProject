import controlP5.*;
import java.io.*;
import org.apache.poi.ss.usermodel.Sheet;


ArrayList<Patient> Patients = new ArrayList<Patient>();
ControlP5 cp1, cp2, cp3, cp4, cp5, cp6, cp7, cp8; 
int page;
Patient logged;
PFont pfont;
String[][] imp;
Textarea nombre, apellidos, nacimiento, documento;

void setup (){
  size(750,500);
  println(this);
  declaringControls();
  creatingControls();
  page=0;
  imp = importExcel(dataPath("Documentos")+"/"+"Libro1.xlsx");
  arrayInit();
}

void draw(){
  background(100);
  pageSelect();
}

public void NewPatient(){
  page = 1;
}

public void Registrar(){
 Patient patient = new Patient(cp2.get(Textfield.class,"Nombre").getText(),
                       cp2.get(Textfield.class,"Apellidos").getText(),
                       cp2.get(Textfield.class,"Documento de Identidad").getText(),
                       cp2.get(Textfield.class,"Dia").getText(),
                       cp2.get(Textfield.class,"Mes").getText(),
                       cp2.get(Textfield.class,"Año").getText(),
                       cp2.get(Textfield.class,"Contraseña").getText());
 Patients.add(patient);
 println(Patients.size(),patient);
 page=0;
}

void Regresar(){page = 0;/*clearing();*/ }

void Registrarse(){page=1;}

void Ingresar(){page=2;}

void IngresarP(){lookForPatient(cp3.get(Textfield.class,"Documento").getText(),cp3.get(Textfield.class,"Contraseña").getText());}

void lookForPatient(String doc, String pw){
  boolean login = false;
  for(int i=0;i<Patients.size();i++){
    if(doc.equals(Patients.get(i).document) && pw.equals(Patients.get(i).password)){
      login=true;
      setInfo(Patients.get(i));
      page=3;
      break;
    }
  }
  if(!login)println("Documento y/o contraseña incorrectos");
}

void setInfo(Patient patient){
  nombre.setText("Nombre: "+patient.name+" "+patient.lastName);
  documento.setText("Documento: "+patient.document);
  nacimiento.setText("Fecha de Nacimiento: "+ patient.day + " de " + patient.month + " de " + patient.year);
}

void Ver(){
  page=4;
}

void pageSelect(){
 switch(page) {
   case(0):
     cp1.setVisible(true);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cp8.setVisible(false);
     break;
     
   case(1):
     cp1.setVisible(false);
     cp2.setVisible(true);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cp8.setVisible(true);
     break;
     
   case(2):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(true);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cp8.setVisible(true);
     break;
     
   case(3):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(true);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cp8.setVisible(true);
     break;
     
   case(4):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(true);
     cp6.setVisible(false);
     cp7.setVisible(false);
     break;
     
   case(5):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(true);
     cp7.setVisible(false);
     break;
     
   case(6):
     cp1.setVisible(true);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(true);
     break;
     
   /**case(7):
     cp1.setVisible(true);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     break;*/
 } 
}


void arrayInit(){
  for (int i=0;i<imp.length;i++){
    Patient patient = new Patient(imp[i][0],imp[i][1],imp[i][2],imp[i][3],imp[i][4],imp[i][5],imp[i][6]);
    Patients.add(patient);
  }
}