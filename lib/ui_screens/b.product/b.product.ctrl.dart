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
    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, Product.random());
  }

// * update
  updateProduct(Product product) {
    final newProduct = Product.update(product);
    final index = _dt.rxProductList.st.indexWhere((element) => element.id == product.id);
    _dt.rxProductList.setState((s) => s[index] = newProduct);
    logx.i(_dt.rxProductList.st[index].toString());
    return _dt.rxProductList.st[index];
  }

  // *delete
  deleteProduct(int index) {
    _dt.rxProductList.st.removeAt(index);
    logx.i(index.toString());
    logx.i(_dt.rxProductList.st.toString());
  }
}
