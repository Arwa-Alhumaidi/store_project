import 'package:flutter/material.dart';
import 'package:store_project/widgets/fake_search.dart';

List<String> items = [
  'men',
  'women',
  'shoes',
  'electronics',
  'accessories',
];

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const FakeSearch(),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
          Positioned(bottom: 0, right: 0, child: categView(size)),
        ],
      ),
    );
  }

  Widget sideNavigator(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.2,
      color: Colors.grey.shade300,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Center(
                child: SizedBox(
              height: 100,
              child: Text(items[index]),
            ));
          }),
    );
  }

  Widget categView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
    );
  }
}
