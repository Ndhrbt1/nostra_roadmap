part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();

  updateProduct() async {
    _sv.updateProduct(
      Product(
        id: _dt.rxSelectedId.st,
        name: _dt.rxProductName.st.value,
        price: int.parse(_dt.rxPrice.st.value),
        qty: int.parse(_dt.rxQty.st.value),
        createdAt: "${_dt.rxProduct.st?.createdAt}",
        updatedAt: DateTime.now().toString(),
      ),
    );
  }

  submit() {
    _dt.rxForm.submit();
    nav.back();
    nav.back();
  }
}
