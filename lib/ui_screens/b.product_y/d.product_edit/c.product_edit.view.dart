part of '_index.dart';

class ProductEditView extends StatelessWidget {
  const ProductEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductEditAppbar(),
      ),
      // floatingActionButton: const ProductEditFab(),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProductEditName(),
              const SizedBox(height: 20),
              const ProductEditPrice(),
              const SizedBox(height: 20),
              const ProductEditQty(),
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
