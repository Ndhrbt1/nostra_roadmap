part of '../_index.dart';

class ProductEditQty extends StatelessWidget {
  const ProductEditQty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
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
    );
  }
}
