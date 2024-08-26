 
class ProductsVM{
 
   DataBase dbOject = DataBase.instance;
  loadeProdect() {
    List<Map<String, dynamic>> data = dbOject.getData("products");
    List<Product> allPrdects = data
        .map((x) => Product(
            name: x['name'], price: x["price"], qty: x["qty"], image: ''))
        .toList();
     return allPrdects;
  }

}