import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/whatsapp/tab/chat/chat_screen.dart';
import 'package:kelas_flutter/project_train/whatsapp/tab/status/list_status.dart';
import 'package:kelas_flutter/project_train/whatsapp/tab/status/status_screen.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff408C6B),
          title: const Text(
            'Whatsapp',
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          actions: const [
            Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Chat",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
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
            ChatScreen(),
            ListStatusScreen(),
            // Center(child: Text('Konten Tab 1')),
            // Center(child: Text('Konten Tab 2')),
            Center(child: Text('Konten Tab 3')),
          ],
        ),
      ),
    );
  }
}
