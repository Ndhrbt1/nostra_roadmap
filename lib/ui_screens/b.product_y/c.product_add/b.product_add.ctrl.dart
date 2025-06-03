part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  addProduct() {
    _sv.addProduct(Product(
      id: UniqueKey().toString().substring(2, 7),
      name: _dt.rxProductName.value,
      price: int.parse(_dt.rxPrice.value),
      qty: int.parse(_dt.rxQty.value),
      createdAt: DateTime.now().toString(),
    ));
    nav.back();
  }

  void submit() => _dt.rxForm.submit();
}
