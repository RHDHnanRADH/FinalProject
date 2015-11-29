import controlP5.*;
import java.io.*;
import org.apache.poi.ss.usermodel.Sheet;


ArrayList<Patient> Patients = new ArrayList<Patient>();
ArrayList<Doctor> Doctors = new ArrayList<Doctor>();
ControlP5 cp1, cp2, cp3, cp4, cp5, cp6, cp7, cp8; 
int page;
Patient logged;
PFont pfont;
String[][] impP, impD;
Textarea nombre, apellidos, nacimiento, documento, especialidad;

void setup (){
  size(750,500);
  println(this);
  declaringControls();
  creatingControls();
  page=0;
  impP = importExcel(dataPath("Documentos")+"/"+"Pacientes.xlsx",7);
  impD = importExcel(dataPath("Documentos")+"/"+"Doctores.xlsx",8);
  println(impP.length,impP[0].length,impD.length,impD[0].length);
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
  boolean loginP = false, loginD = false;
  for(int i=0;i<Patients.size();i++){
    if(doc.equals(Patients.get(i).document) && pw.equals(Patients.get(i).password)){
      loginP=true;
      Patients.get(i).show();
      page=3;
      break;
    }
  }
  if(!loginP){
    for(int i=0;i<Doctors.size();i++){
      if(doc.equals(Doctors.get(i).document) && pw.equals(Doctors.get(i).password)){
        loginD=true;
        Patients.get(i).show();
        page=3;
      break;
    }
  }
  }
  
  if(!loginP && !loginD)println("Documento y/o contraseña incorrectos");
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
  for (int i=0;i<impP.length;i++){
    Patient patient = new Patient(impP[i][0],impP[i][1],impP[i][2],impP[i][3],impP[i][4],impP[i][5],impP[i][6]);
    Patients.add(patient);
  }
  for (int i=0;i<impD.length;i++){
    Doctor doctor = new Doctor(impD[i][0],impD[i][1],impD[i][2],impD[i][3],impD[i][4],impD[i][5],impD[i][6], impD[i][7]);
    Doctors.add(doctor);
  }
}

//Oprimiendo la tecla 'Ctrl' se actualiza el archivo de Pacientes. El archivo Doctores se queda inamovible.
void keyReleased(){
  if (keyCode == CONTROL){
    String[][] exp = new String[Patients.size()][7];
    for(int i=0;i<Patients.size();i++){
      for(int j=0;j<7;j++){
        exp[i][j]=selection(j,Patients.get(i));
      }
    }
    exportExcel(exp, dataPath("Documentos")+"/"+"Pacientes.xlsx");
  }
}

String selection(int j,Patient p){
  String ret;
  if(j==0){
    ret = p.name;
  }else if(j==1){
    ret = p.lastName;
  }else if(j==2){
    ret = p.document;
  }else if(j==3){
    ret = p.day;
  }else if(j==4){
    ret = p.month;
  }else if(j==5){
    ret = p.year;
  }else{
    ret = p.password;
  }
  return ret;
}