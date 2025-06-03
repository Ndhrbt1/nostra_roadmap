part of '../_index.dart';

class ProductAddQty extends StatelessWidget {
  const ProductAddQty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxQty.controller,
        decoration: InputDecoration(
            hintText: 'input quantity',
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
