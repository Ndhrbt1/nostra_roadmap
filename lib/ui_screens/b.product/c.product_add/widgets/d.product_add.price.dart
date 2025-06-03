part of '../_index.dart';

class ProductAddPrice extends StatelessWidget {
  const ProductAddPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxPrice.controller,
        decoration: InputDecoration(
            hintText: 'input price',
            label: const Text('product price'),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            errorText: _dt.rxPrice.error),
      ),
    );
  }
}
