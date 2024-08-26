import 'product.dart';
import 'productsVM.dart';
import 'repo/online_database.dart';

class CartView {
  ProductsVM productsVM = ProductsVM() ;
  OnlineDatabase  onlineDatabase = OnlineDatabase.instance;
  
  cartItem(){
    List<Product> cartItems = productsVM.loadeProdect(onlineDatabase);
    cartItems.forEach((element) { 
      print("name ${element.name}");
    });
  }

}