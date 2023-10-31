// import 'package:riverpod/riverpod.dart';
// import 'package:toykid/model/cart.dart';

// final totalHargaProvider = Provider<double>((ref) {
//   var demoCartsProvider;
//   final demoCarts = ref.watch(demoCartsProvider.state);
//   double totalHarga = 0;
//   for (Cart cart in demoCarts) {
//     totalHarga += cart.product.price * cart.numOfItem;
//   }
//   return totalHarga;
// });