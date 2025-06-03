part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<void> addProductList() async {
    final product = Product(
      id: UniqueKey().toString().substring(2, 7),
      name: _dt.rxProductName.value,
      price: int.parse(_dt.rxPrice.value),
      qty: int.parse(_dt.rxQty.value),
      createdAt: DateTime.now().toString(),
    );

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    logx.i('product added');

    nav.back();
  }

  void submit() => _dt.rxForm.submit();
}
