part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: const ProductListFab(),
      body: OnBuilder.data(
        listenTo: _dt.rxProductList,
        builder: (data) => data.isEmpty
            ? const Center(
                child: Text('Data is empty'),
              )
            : ListView(
                children: [
                  ...List.generate(
                    data.length,
                    (index) => Card(
                      child: ListTile(
                        leading: Text(data[index].id),
                        title: Text(data[index].name),
                        subtitle: Text(Fun.formatRupiah.format(data[index].price)),
                        onTap: () {
                          _ct.getReadProductDetail(data[index]);
                          _ct.setSelectedId(data[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
