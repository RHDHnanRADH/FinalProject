class Doctor extends User{
  String speciality;
  
  Doctor(String n, String ln, String doc, String d, String m, String y, String pw, String sp){
    name=n; lastName = ln; document = doc; day=d; month=m; year=y; password=pw; speciality=sp; 
  }
  
  void show(){
    nombre.setText("Nombre: "+this.name+" "+this.lastName);
    documento.setText("Documento: "+this.document);
    nacimiento.setText("Fecha de Nacimiento: "+ this.day + " de " + this.month + " de " + this.year);
    especialidad.setText("Especialidad: " + this.speciality);
  }
}