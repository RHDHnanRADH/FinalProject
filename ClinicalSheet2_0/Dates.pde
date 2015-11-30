class Dates{
  String dDay, dMonth, dHour, dDoctor;
  
  Dates(String dia, String mes, String hora, String doctor){
    dDay = dia;
    dMonth = mes;
    dHour = hora;
    dDoctor = doctor;
  }
  
  void showDate(){
    cp9.get(Textarea.class,"Fecha").setText("Fecha de la cita: " + this.dMonth + " " + this.dDay + " a las " + this.dHour + " horas.");
    cp9.get(Textarea.class,"Doctor").setText("Doctor con quien tiene la cita: "+this.dDoctor);
  }
}