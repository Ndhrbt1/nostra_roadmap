part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  Future<Product> updateProduct() async {
    final newProduct = Product(
      id: _dt.rxSelectedId.st,
      name: _dt.rxProductName.st.value,
      price: int.parse(_dt.rxPrice.st.value),
      qty: int.parse(_dt.rxQty.st.value),
      createdAt: "${_dt.rxProduct.st?.createdAt}",
      updatedAt: DateTime.now().toString(),
    );

    final index = _dt.rxProductList.st.indexWhere((element) => element.id == newProduct.id);
    _dt.rxProductList.setState((s) => s[index] = newProduct);
    logx.i('product edited');
    return _dt.rxProductList.st[index];
  }

  submitEdit() {
    _dt.rxForm.submit();
    nav.back();
    nav.back();
  }
}
