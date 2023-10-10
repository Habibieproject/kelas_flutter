import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/whatsapp/tab/status/status_screen.dart';
import 'package:kelas_flutter/repository/list_status_data.dart';
import 'package:kelas_flutter/extension/navigator.dart';

class ListStatusScreen extends StatelessWidget {
  const ListStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      children: [
        const Row(
          children: [
            Text("Status"),
          ],
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1626808642875-0aa545482dfb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80"),
          ),
          title: Text("Status Saya"),
          subtitle: Text("Ketuk untuk memperbarui status"),
        ),
        const Row(
          children: [
            Text("Pembaruan Terkini"),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: listStatusData.length,
          itemBuilder: (BuildContext context, int index) {
            final data = listStatusData[index];
            return ListTile(
              onTap: () {
                context.push(const MoreStories());
                // context.pushNamedAndRemoveAll(const MoreStories());
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const MoreStories()),
                // );
                //   Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const MoreStories()),
                // );
              },
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data.gambar),
              ),
              title: Text(data.nama),
              subtitle: Text(data.jam),
            );
          },
        ),
      ],
    );
  }
}
