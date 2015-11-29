class Patient extends User{
    
 Patient(String n, String ln, String doc, String d, String m, String y, String pw){
    name=n; lastName = ln; document = doc; day=d; month=m; year=y; password=pw; 
  }
  
 void show(){
  nombre.setText("Nombre: "+this.name+" "+this.lastName);
  documento.setText("Documento: "+this.document);
  nacimiento.setText("Fecha de Nacimiento: "+ this.day + " de " + this.month + " de " + this.year);
 }
 
 void modify(){
  mNombre.setText(this.name);
  mApellidos.setText(this.lastName);
  mDocumento.setText(this.document);
  mDia.setText(this.day);
  mMes.setText(this.month);
  mAnio.setText(this.year);
  mContra.setText(this.password);
 }
 
 void getChanges(){
   this.name = cp6.get(Textfield.class,"Nombre").getText();
   this.lastName = cp6.get(Textfield.class,"Apellidos").getText();
   this.document = cp6.get(Textfield.class,"Documento de Identidad").getText();
   this.day = cp6.get(Textfield.class,"Dia").getText();
   this.month = cp6.get(Textfield.class,"Mes").getText();
   this.year = cp6.get(Textfield.class,"Año").getText();
   this.password = cp6.get(Textfield.class,"Contraseña").getText();
 }
}