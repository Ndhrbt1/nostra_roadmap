part of '_index.dart';

class ProductData {
  final rxTitle = 'Product'.inj();

  final rxCounter = 0.inj();

  final rxRandom = Prov.sample.st.rxRandom;

  // * create var injected List<Product>

  final rxProductList = RM.inject<List<Product>>(
    () => [],
    sideEffects: SideEffects(
      initState: () => _ct.getAllProducts(),
    ),
  );
}
