part of '_index.dart';

class ProductRepoMock implements ProductRepo {
  @override
  int giveNewRandom() {
    final x = Random().nextInt(100);
    logz.wtf('random value coming from ProductRepoMock');
    return x;
  }

  @override
  List<Product> readAllProducts() => throw UnimplementedError();

  @override
  readProductDetail(Product product) => throw UnimplementedError();
}
