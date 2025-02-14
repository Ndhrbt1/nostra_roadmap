part of '_index.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAppbar(),
      ),
      floatingActionButton: ProductFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductCharlie(),
            ProductDelta(),
            ProductEcho(),
          ],
        ),
      ),
    );
  }
}
