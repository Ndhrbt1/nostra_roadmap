part of '_index.dart';

class ProductRepo {
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.s('random value coming from ProductRepo');
    return x;
  }

  List<Product> readAllProducts() {
    List<Product> product = [];
    product.add(Product.init());
    product.add(Product.init2());
    logx.i(product.toString());
    return product;
  }
}
