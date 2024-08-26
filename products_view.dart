import 'product.dart';
import 'productsVM.dart';
import 'repo/offline_database.dart';
import 'repo/online_database.dart';

class ProductsView {
  ProductsVM productsVM = ProductsVM();
  //Singliton >>
  OnlineDatabase  onlineDatabase = OnlineDatabase.instance;
OfflineDatabase offlineDatabase = OfflineDatabase.instance;


  showProducts() {
    List<Product> items = productsVM.loadeProdect(offlineDatabase);
    items.forEach((p) {
      print("name =${p.name} price=${p.price} qty= ${p.qty}");
    });
  }
}
