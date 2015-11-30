abstract class User{
  String name, lastName, document, day, month, year, password;
  Dates date;
  
  abstract void show(); 
  
  void ConfirmDate(String dia, String mes, String hora, String doctor){
    date = new Dates(dia,mes,hora,doctor);
  }
  void CancelDate(String dia, String mes, String hora){
  }
  
}