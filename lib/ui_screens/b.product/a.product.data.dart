part of '_index.dart';

class ProductData {
  final rxTitle = 'Product'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;
}
