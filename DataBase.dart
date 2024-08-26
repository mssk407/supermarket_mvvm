
class DataBase{
  List <Map<String,dynamic>>products=[
    {"name":"Nokia","price":200,"qnty":100},
    {"name":"Samsung s23","price":1500,"qnty":50},
    {"name":"Redmi","price":400,"qnty":400},
    {"name":"Iphon 13 pro max","price":2000,"qnty":10 },
  ];
  DataBase._() {
    //your code hear........
    // غالبا يكون الكود هنا استدعاء لجميع الدوال التي يتم تنفيذها لمرة واحدة فقط
 _connect();
 }
  static DataBase? _instance;
  
  static DataBase  get instance { 
    if(_instance == null) {
      synchronized(DataBase) {
        if(_instance == null) {
          _instance = DataBase._();
        }
      }
    }
    return _instance!;
  }
  _connect(){
    //your code hear........

  }
  List <Map<String , dynamic>> getData(String tablename){
    if (tablename == "Products")
    return products ;
    else
    return [] ;
    }

  
}