part of '../_index.dart';

class ProductEditName extends StatelessWidget {
  const ProductEditName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
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
    );
  }
}
