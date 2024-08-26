  import 'DataBase.dart';

class OnlineDatabase extends DataBase{
  @override
  List <Map<String,dynamic>>products=[
    {"name":"Nokia","price":200,"qnty":100},
    {"name":"Samsung s23","price":1500,"qnty":50},
    {"name":"Redmi","price":400,"qnty":400},
    {"name":"Iphon 13 pro max","price":2000,"qnty":10 },
  ];
   OnlineDatabase._() {
    //your code hear........
    // غالبا يكون الكود هنا استدعاء لجميع الدوال التي يتم تنفيذها لمرة واحدة فقط
 _connect();
 }
  static OnlineDatabase? _instance;
  
  static OnlineDatabase  get instance { 
    if(_instance == null) {
      // synchronized(DataBase) {
        // if(_instance == null) {
          _instance = OnlineDatabase._();
        }
    //   }
    // }
    return _instance!;
  }
  @override
  List<Map<String, dynamic>> getData(String tablename) {
    if (tablename == "products")
    return products ;
    else
    return [] ;
    }
  
  void _connect() {}
  
}