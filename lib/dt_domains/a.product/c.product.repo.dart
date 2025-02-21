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

  Product readProductDetail(Product product) {
    final index = _pv.rxProductList.st.indexWhere((element) => element.id == product.id);
    logx.i(_pv.rxProductList.st[index].toString());
    return _pv.rxProductList.st[index];
  }

  addProduct() {
    _pv.rxProductList.st = [..._pv.rxProductList.st]..insert(0, Product.random());
  }

  updateProduct(Product product) {
    Product newProduct = Product.update(product);
    final index = _pv.rxProductList.st.indexWhere((element) => element.id == newProduct.id);
    _pv.rxProductList.setState((s) => s[index] = newProduct);
    logx.i(_pv.rxProductList.st[index].toString());
    return _pv.rxProductList.st[index];
  }

  deleteProduct(Product product) {
    _pv.rxProductList.st.removeWhere((element) => element.id == product.id);
    nav.back();
    _pv.rxProductList.setState(
      (s) {
        return null;
      },
    );
    debugPrint('product has been deleted');
  }
}
