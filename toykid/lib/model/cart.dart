import 'package:toykid/model/product.dart';

class Cart{
  final Product product;  //fungsi?
  final int numOfItem;   //ini jumlah dari produk


  var id;

  Cart({required this.product, required this.numOfItem});
}


List<Cart> demoCarts = [
  Cart(product : demoProducts[0], numOfItem: 2),
  Cart(product : demoProducts[1], numOfItem: 1),
  Cart(product : demoProducts[3], numOfItem: 1),
];

// class CartModel {
//      List<CartModel> _items = [];

//      void addProduct(Product product) {
//        _items.add(CartModel(product: product, numOfItem: 1));
//        notifyListeners();
//      }

//      List<CartModel> get items {
//        return [..._items];
//      }
//    }