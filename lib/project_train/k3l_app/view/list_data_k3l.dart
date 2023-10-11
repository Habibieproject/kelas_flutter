import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/k3l_app/view/ohse_report.dart';

class ListPatrolK3LScreen extends StatelessWidget {
  const ListPatrolK3LScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          automaticallyImplyLeading: false,
          actions: const [
            Text("Nama"),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.person,
              color: Colors.black,
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "OHSE Report",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "PIC Report",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "My Report",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              // Tab(
              //   text: 'Status',
              // ),
              // Tab(text: 'Calls'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OHSEReportScreen(),
            Center(child: Text('Konten Tab 2')),
            Center(child: Text('Konten Tab 3')),
          ],
        ),
      ),
    );
  }
}
