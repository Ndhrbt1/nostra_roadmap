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
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxProductName.st.controller,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    hintText: 'edit product name',
                    label: const Text('product name'),
                    errorText: _dt.rxProductName.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxPrice.st.controller,
                  decoration: InputDecoration(
                      hintText: 'edit price',
                      label: const Text('product price'),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      errorText: _dt.rxPrice.error),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxQty.st.controller,
                  decoration: InputDecoration(
                      hintText: 'edit quantity',
                      label: const Text('product quantity'),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      errorText: _dt.rxQty.error),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => ElevatedButton(
                  onPressed: () => _ct.submitEdit(),
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
