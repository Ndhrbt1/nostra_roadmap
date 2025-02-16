part of '_index.dart';

class ProductCtrl {
  init() => logxx.i(ProductCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  // * collecting data then prepare them when init start

  List<Product> readAllProducts() {
    List<Product> products = [];
    products.add(Product.init());
    products.add(Product.init2());
    logx.i(products.toString());
    return products;
  }

// * insert data into List<Product>

  getAllProducts() {
    _dt.rxProductList.st = readAllProducts();
  }

// * adding data into List<Product>
  addProduct() {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, Product.add());
  }
}
