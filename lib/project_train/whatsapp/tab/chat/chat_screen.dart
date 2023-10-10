import 'package:flutter/material.dart';
import 'package:kelas_flutter/repository/chat_data.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (BuildContext context, int index) {
        final data = chatData[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(data.gambar),
          ),
          title: Text(data.nama),
          subtitle: Text(data.pesan),
          trailing: Text(data.jam),
        );
      },
    );
  }
}
