  import 'DataBase.dart';

class OfflineDatabase extends DataBase{
  @override
  List <Map<String,dynamic>>products=[
    {"name":"LG","price":200,"qnty":100},
    {"name":"Samsung s20","price":1500,"qnty":50},
    {"name":"Redmi Note 9","price":400,"qnty":400},
    {"name":"Iphon 12 ","price":2000,"qnty":10 },
  ];
   OfflineDatabase._() {
    //your code hear........
    // غالبا يكون الكود هنا استدعاء لجميع الدوال التي يتم تنفيذها لمرة واحدة فقط
 _connect();
 }
  static OfflineDatabase? _instance;
  
  static OfflineDatabase  get instance { 
    if(_instance == null) {
      // synchronized(DataBase) {
        // if(_instance == null) {
          _instance = OfflineDatabase._();
        }
    //   }
    // }
    return _instance!;
  }
  @override
  List<Map<String, dynamic>> getData(String tablename) {
    if (tablename == "Products")
    return products ;
    else
    return [] ;
    }
  
  void _connect() {}
  
}