part of '_index.dart';

class ProductAddData {
  final rxTitle = 'Product Add'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  final rxProductList = _pv.rxProductList;

  final rxForm = RM.injectForm(
    submit: () async => await _ct.addProduct(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxProductName = RM.injectTextEditing(
    text: 'Sample Product',
    validators: [Validate.isNotEmpty],
  );

  final rxPrice = RM.injectTextEditing(
    text: 1000.toString(),
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxQty = RM.injectTextEditing(
    text: 1.toString(),
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );
}
