import 'package:flutter/material.dart';
import 'package:kelas_flutter/project_train/k3l_app/model/list_patrol_model.dart';

class DetailOHSE extends StatelessWidget {
  const DetailOHSE({super.key, required this.data});
  final DetailDataPatrol data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(data.departement)],
      ),
    );
  }
}
