part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: const ProductDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${_dt.rxProduct.st?.id}'),
            Text('${_dt.rxProduct.st?.name}'),
            Text('${_dt.rxProduct.st?.price}'),
            Text('${_dt.rxProduct.st?.createdAt}'),
            Text('${_dt.rxProduct.st?.updatedAt}')
          ],
        ),
      ),
    );
  }
}
