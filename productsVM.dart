
 
import 'repo/DataBase.dart';
import 'product.dart';

class ProductsVM{
 
 
  loadeProdect(  DataBase dbOject) {
    List<Map<String, dynamic>> data = dbOject.getData("products");
    List<Product> allPrdects = data
        .map((x) => Product(
            name: x['name'].toString(), price: x["price"].toString(), qty: x["qty"]))
        .toList();
     return allPrdects;
  }

}
