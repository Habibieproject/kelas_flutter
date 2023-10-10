import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.greenAccent,
          title: const Text('Tab Bar Contoh'),
          bottom: TabBar(
            tabs: [
              Container(
                // height: 10,
                decoration: const BoxDecoration(color: Colors.amber),
                child: const Text("Tab 1"),
              ),
              // Tab(
              //   text: 'Tab 1',
              // ),
              const Tab(text: 'Tab 2'),
              const Tab(text: 'Tab 3'),
              const Tab(text: 'Tab 4'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Konten Tab 1')),
            Center(child: Text('Konten Tab 2')),
            Center(child: Text('Konten Tab 3')),
            Center(child: Text('Konten Tab 4')),
          ],
        ),
      ),
    );
  }
}
