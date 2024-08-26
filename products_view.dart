import 'product.dart';
import 'productsVM.dart';

class ProductsView {
  ProductsVM productsVM = ProductsVM();

  showProducts() {
    List<Product> items = productsVM.loadeProdect();
    items.forEach((p) {
      print("name =${p.name} price=${p.price} qty= ${p.qty}");
    });
  }
}
