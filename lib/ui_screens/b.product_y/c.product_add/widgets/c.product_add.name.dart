part of '../_index.dart';

class ProductAddName extends StatelessWidget {
  const ProductAddName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () => TextField(
        controller: _dt.rxProductName.controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
          hintText: 'input product name',
          label: const Text('product name'),
          errorText: _dt.rxProductName.error,
        ),
      ),
    );
  }
}
