import 'package:flutter/material.dart';
import 'package:kelas_flutter/repository/call_data.dart';

class ListCallScreen extends StatelessWidget {
  const ListCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      children: [
        ListTile(
          leading: const Stack(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xff408C6B),
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          onTap: () {},
          title: const Text("Buat Tautan Panggilan"),
          subtitle: const Text("Bagikan tautan untuk panggilan WhatsApp Anda"),
        ),
        const Row(
          children: [
            Text("Terbaru"),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: listCallData.length,
          itemBuilder: (BuildContext context, int index) {
            final data = listCallData[index];
            return ListTile(
              // onTap: () {},
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data.gambar),
              ),
              trailing: InkWell(
                  onTap: () {},
                  child: !data.isIn
                      ? const Icon(Icons.video_call_outlined,
                          color: Color(0xff408C6B))
                      : const Icon(Icons.call, color: Color(0xff408C6B))),
              title: Text(data.nama),
              subtitle: Row(
                children: [
                  Icon(
                    !data.isIn
                        ? Icons.subdirectory_arrow_left_sharp
                        : Icons.arrow_outward,
                    color: !data.isIn ? Colors.red : Colors.green,
                  ),
                  Text(data.jam),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
