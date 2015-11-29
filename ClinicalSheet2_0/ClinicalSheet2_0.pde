import controlP5.*;
import java.io.*;
import java.util.*;
import org.apache.poi.ss.usermodel.Sheet;


ArrayList<Patient> Patients = new ArrayList<Patient>();
ArrayList<Doctor> Doctors = new ArrayList<Doctor>();
//Crea los grupos para las distintas "páginas". En la pestaña "Inicializando" se encontrará la explicación para cada grupo.
ControlP5 cp1, cp2, cp3, cp4, cp5, cp6, cp7, cpR;
int page;
Patient pLogged=null;
PFont pfont;
//Estas matrices son para la importación de los datos de los pacientes y los doctores desde archivos Pacientes.xlsx y Doctores.xlsx. 
//Código tomado de https://conorblack.wordpress.com/2014/03/23/export-import-processing-excel-xlsx/
String[][] impP, impD;
ArrayList <String> special = new ArrayList<String>();
ArrayList <String> doc = new ArrayList<String>();
//Campos para la visualización de los datos
Textarea nombre, apellidos, nacimiento, documento, especialidad;
//Campos para la modificación de los datos
Textfield mNombre, mApellidos, mDocumento, mDia, mMes, mAnio, mContra;


void setup (){
  size(750,500);
  declaringControls();
  creatingControls();
  page=6;
  impP = importExcel(dataPath("Documentos")+"/"+"Pacientes.xlsx",7);
  impD = importExcel(dataPath("Documentos")+"/"+"Doctores.xlsx",8);
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
 exporting();//Exporta automáticamente lo datos al archivo excel para guardarlos.
 page=0;
}

void Regresar(){
  if(page==4||page==5||page==6)page=3;
  else if (page==3)page=2;
  else page =0;
}

void Registrarse(){page=1;}

void Ingresar(){page=2;}

void IngresarP(){lookForPatient(cp3.get(Textfield.class,"Documento").getText(),cp3.get(Textfield.class,"Contraseña").getText());}

void lookForPatient(String doc, String pw){
  boolean loginP = false;
  for(int i=0;i<Patients.size();i++){
    if(doc.equals(Patients.get(i).document) && pw.equals(Patients.get(i).password)){
      loginP = true;
      pLogged = Patients.get(i);
      page = 3;
      break;
    }
  }
  clearcp3();
}

void Ver(){
  if(pLogged != null)pLogged.show();
  page=4;
}

void Modificar(){
  if(pLogged != null)pLogged.modify();
  page=5;
}

void Guardar(){
  pLogged.getChanges();
  exporting();
  page=3;
}

void Date(){
  page=6;
}

void Especialidad(int sel){
  //cp7.get(ScrollableList.class,"Doctores").setVisible(true);
  String sp = special.get(sel);
  doc.clear();
  cp7.get(ScrollableList.class,"Doctores").setLabel("Doctores").clear();
  for(int i=0;i<Doctors.size();i++){
    if(Doctors.get(i).speciality.equals(sp)){
      doc.add(Doctors.get(i).name+" "+ Doctors.get(i).lastName);
    }
  }
  cp7.get(ScrollableList.class,"Doctores").addItems(doc).setVisible(true);
}

void Doctores(int n){
  String[] toDo = {"Ver Datos","Solicitar cita"};
  cp7.get(ScrollableList.class,"toDowithDoctor").clear();
  cp7.get(ScrollableList.class,"toDowithDoctor").addItems(toDo).setVisible(true);
}

//Selecciona qué grupo será visible y qué grupo no.
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
     cpR.setVisible(false);
     break;
     
   case(1):
     cp1.setVisible(false);
     cp2.setVisible(true);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cpR.get(Button.class,"Regresar").setLabel("Cancelar");
     cpR.setVisible(true);
     break;
     
   case(2):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(true);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cpR.get(Button.class,"Regresar").setLabel("Regresar");
     cpR.setVisible(true);
     break;
     
   case(3):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(true);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cpR.get(Button.class,"Regresar").setLabel("Cerrar sesión");
     cpR.setVisible(true);
     break;
     
   case(4):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(true);
     cp6.setVisible(false);
     cp7.setVisible(false);
     cpR.get(Button.class,"Regresar").setLabel("Regresar");
     cpR.setVisible(true);
     break;
     
   case(5):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(true);
     cp7.setVisible(false);
     cpR.get(Button.class,"Regresar").setLabel("Cancelar");
     cpR.setVisible(true);
     break;
     
   case(6):
     cp1.setVisible(false);
     cp2.setVisible(false);
     cp3.setVisible(false);
     cp4.setVisible(false);
     cp5.setVisible(false);
     cp6.setVisible(false);
     cp7.setVisible(true);
     cpR.get(Button.class,"Regresar").setLabel("Cancelar");
     cpR.setVisible(true);
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

//Converte las matrices de String en objetos de la clase Paciente y Doctor, respectivamente 
void arrayInit(){
  for (int i=0;i<impP.length;i++){
    Patient patient = new Patient(impP[i][0],impP[i][1],impP[i][2],impP[i][3],impP[i][4],impP[i][5],impP[i][6]);
    Patients.add(patient);
  }
  for (int i=0;i<impD.length;i++){
    Doctor doctor = new Doctor(impD[i][0],impD[i][1],impD[i][2],impD[i][3],impD[i][4],impD[i][5],impD[i][6], impD[i][7]);
    Doctors.add(doctor);
  }
  specialInit();
}

//Oprimiendo la tecla 'Ctrl' se actualiza el archivo de Pacientes. El archivo Doctores se queda inamovible.
void keyReleased(){
  if (keyCode == CONTROL){
    exporting();
  }
}

//Exporta los cambios realizados en la lista Patients al archivo Pacientes.xlsx
void exporting(){
  String[][] exp = new String[Patients.size()][7];
    for(int i=0;i<Patients.size();i++){
      for(int j=0;j<7;j++){
        exp[i][j]=selection(j,Patients.get(i));
      }
    }
    exportExcel(exp, dataPath("Documentos")+"/"+"Pacientes.xlsx");
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

void specialInit(){
  for (int i=0;i<Doctors.size();i++){
    special.add(Doctors.get(i).speciality);
  }
  HashSet h = new HashSet(special);
  special.clear();
  special.addAll(h);
  cp7.get(ScrollableList.class,"Especialidad").addItems(special);
}