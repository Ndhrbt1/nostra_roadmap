part of '_index.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAppbar(),
      ),
      floatingActionButton: const ProductFab(),
      body: OnBuilder.data(
        listenTo: _dt.rxProductList,
        builder: (data) => data.isEmpty
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('data is empty'),
                  ],
                ),
              )
            : ListView(
                children: [
                  ...List.generate(
                    data.length,
                    (index) => Card(
                      child: ListTile(
                        title: Text(data[index].name),
                        subtitle: Text(Fun.formatRupiah.format(data[index].price)),
                        leading: Text(data[index].id),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                _ct.updateProduct(data[index]);
                              },
                              icon: const Icon(Icons.update),
                            ),
                            IconButton(
                              onPressed: () {
                                debugPrint(index.toString());
                                _dt.rxProductList.setState(
                                  (s) {
                                    return null;
                                  },
                                );
                                _ct.deleteProduct(index);
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
