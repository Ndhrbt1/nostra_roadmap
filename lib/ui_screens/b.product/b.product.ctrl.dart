part of '_index.dart';

class ProductCtrl {
  init() => logxx.i(ProductCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  List<Product> readAllProducts() {
    List<Product> products = [];
    products.add(Product.init());
    products.add(Product.init2());
    return products;
  }

  getAllProducts() {
    _dt.rxProductList.st = readAllProducts();
  }
}
