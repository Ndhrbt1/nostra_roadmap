part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  getReadAllProducts() => _sv.getReadAllProducts();

  getReadProductDetail(Product product) => _sv.getReadProductDetail(product);

  setSelectedId(Product product) => _sv.setSelectedId(product);
}
