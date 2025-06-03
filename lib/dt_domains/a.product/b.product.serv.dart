part of '_index.dart';

class ProductServ {
  void init() {
    logxx.i(ProductServ, '...');
  }

  void updateRandom() {
    _pv.rxRandom.st = _rp.giveNewRandom();
  }

  void onSetState() {
    logzz.i(ProductServ, 'rxCounter setState success');
  }

  getReadAllProducts() {
    _pv.rxProductList.st = _rp.readAllProducts();
  }

  getReadProductDetail(Product product) {
    _pv.rxProduct.st = _rp.readProductDetail(product);
  }

  setSelectedId(Product product) {
    _pv.rxSelectedId.st = product.id;
    debugPrint(_pv.rxSelectedId.st);
  }

  addProduct(Product product) => _rp.addProduct(product);

  updateProduct(Product newProduct) => _rp.updateProduct(newProduct);

  getUpdateProduct(Product product) => _pv.rxProduct.st = _sv.updateProduct(product);

  deleteProduct(Product product) => _rp.deleteProduct(product);
}
