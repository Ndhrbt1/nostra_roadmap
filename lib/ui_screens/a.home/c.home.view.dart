part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      // floatingActionButton: HomeFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // HomeCharlie(),
            // HomeDelta(),
            // HomeEcho(),
            ElevatedButton(
              onPressed: () => nav.to(Routes.product),
              child: const Text(
                "to SDP 1",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => nav.to(Routes.productList),
              child: const Text(
                "to SDP 2",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
