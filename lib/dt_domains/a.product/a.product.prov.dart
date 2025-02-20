part of '_index.dart';

class ProductProv {
  final rxRandom = RM.inject<int>(
    () => 0,
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (p0) => _sv.onSetState(),
    ),
  );

  final rxProductList = RM.inject<List<Product>>(
    () => [],
    sideEffects: SideEffects(
      initState: () => _sv.getReadAllProducts(),
    ),
  );

  final rxProduct = RM.inject<Product?>(() => null);

  final rxSelectedId = RM.inject<String>(() => '');
}
