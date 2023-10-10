import 'package:flutter/material.dart';
import 'package:kelas_flutter/utils/app_image.dart';

class ListileWidget extends StatelessWidget {
  const ListileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // minLeadingWidth: 100,
      onTap: () {},
      contentPadding: const EdgeInsets.only(left: 20),
      leading: Image.asset(AppImage.gambar1),
      title: const Text("Joko"),
      subtitle: const Text("Sedang dimana?"),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
