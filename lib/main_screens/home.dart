import 'package:flutter/material.dart';

import '../minor_screens/search.dart';
import '../widgets/fake_search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: FakeSearch(),
          bottom: const TabBar(isScrollable: true, indicatorColor: Colors.yellow, indicatorWeight: 8, tabs: [
            RepeatedTap(label: 'Men'),
            RepeatedTap(label: 'Women'),
            RepeatedTap(label: 'Shoes'),
            RepeatedTap(label: 'Bags'),
            RepeatedTap(label: 'Electronics'),
            RepeatedTap(label: 'Accessories'),
            RepeatedTap(label: 'Home & Garden'),
            RepeatedTap(label: 'Kids'),
            RepeatedTap(label: 'Beauty'),
          ]),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: const TabBarView(children: [
          Center(child: Text('men screen')),
          Center(child: Text('women screen')),
          Center(child: Text('shoes screen')),
          Center(child: Text('bags screen')),
          Center(child: Text('electronics screen')),
          Center(child: Text('accessories screen')),
          Center(child: Text('home & garden screen')),
          Center(child: Text('kids screen')),
          Center(child: Text('beauty screen')),
        ]),
      ),
    );
  }
}

class RepeatedTap extends StatelessWidget {
  final String label;
  const RepeatedTap({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
