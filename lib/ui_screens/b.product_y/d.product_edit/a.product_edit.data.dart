part of '_index.dart';

class ProductEditData {
  final rxTitle = 'Product Edit'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProduct = _pv.rxProduct;

  final rxSelectedId = _pv.rxSelectedId;

  final rxProductList = _pv.rxProductList;

  final rxForm = RM.injectForm(
    submit: () => _ct.updateProduct(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxProductName = RM.inject(
    () => RM.injectTextEditing(
      text: "${_dt.rxProduct.st?.name}",
      validators: [
        Validate.isNotEmpty,
      ],
    ),
  );

  final rxPrice = RM.inject(
    () => RM.injectTextEditing(
      text: "${_dt.rxProduct.st?.price}",
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );

  final rxQty = RM.inject(
    () => RM.injectTextEditing(
      text: "${_dt.rxProduct.st?.qty}",
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );
}
