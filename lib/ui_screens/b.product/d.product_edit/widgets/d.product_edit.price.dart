part of '../_index.dart';

class ProductEditPrice extends StatelessWidget {
  const ProductEditPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
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
    );
  }
}
