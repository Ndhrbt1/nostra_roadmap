part of '_index.dart';

class ProductAddView extends StatelessWidget {
  const ProductAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAddAppbar(),
      ),
      // floatingActionButton: const ProductAddFab(),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProductAddName(),
              const SizedBox(height: 20),
              const ProductAddPrice(),
              const SizedBox(height: 20),
              const ProductAddQty(),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => ElevatedButton(
                  onPressed: () => _ct.submit(),
                  child: const Text('submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
