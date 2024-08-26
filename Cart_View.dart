import 'product.dart';
import 'productsVM.dart';

class CartView {
  ProductsVM productsVM = ProductsVM() ;
  cartItem(){
    List<Product> cartItems = productsVM.loadeProdect();
    cartItems.forEach((element) { 
      print("name ${element.name}");
    });
  }

}