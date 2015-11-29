class Patient extends User{
    
 Patient(String n, String ln, String doc, String d, String m, String y, String pw){
    name=n; lastName = ln; document = doc; day=d; month=m; year=y; password=pw; 
  }
  
 void show(){
  nombre.setText("Nombre: "+this.name+" "+this.lastName);
  documento.setText("Documento: "+this.document);
  nacimiento.setText("Fecha de Nacimiento: "+ this.day + " de " + this.month + " de " + this.year);
 }
 
}