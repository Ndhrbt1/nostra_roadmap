part of '_index.dart';

class ProductCtrl {
  init() => logxx.i(ProductCtrl, '...');

  increaseCounter() => _dt.rxCounter.setState((s) => s + 1);

  updateRandom() => Serv.sample.updateRandom();
}
