part of '../_index.dart';

class ProductDetailFab extends StatelessWidget {
  const ProductDetailFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.update),
      onPressed: () {
        _ct.getUpdateProduct(_dt.rxProduct.st!);
      },
    );
  }
}
