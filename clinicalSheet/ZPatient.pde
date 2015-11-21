class Patient{
  String name, age, document;
  int day, month, year;
  
  Patient(String n, String a,String doc, int d, int m, int y){
    name=n; age=a; document=doc;
    day=d; month=m; year=y;
    int [] birthday = {day,month,year};
  }
}