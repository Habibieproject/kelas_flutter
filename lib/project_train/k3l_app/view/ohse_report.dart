import 'package:flutter/material.dart';
import 'package:kelas_flutter/extension/navigator.dart';
import 'package:kelas_flutter/project_train/k3l_app/api/repo/list_patrol_api.dart';
import 'package:kelas_flutter/project_train/k3l_app/model/list_patrol_model.dart';
import 'package:kelas_flutter/project_train/k3l_app/view/detail_ohse_report.dart';

class OHSEReportScreen extends StatelessWidget {
  const OHSEReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FutureBuilder(
              future: ListPatrol().listPatrolApi(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Ketika data masih dimuat, tampilkan indikator loading
                  return const Center(
                    child: Text("Tunggu Sebentar..."),
                  );
                } else if (snapshot.hasError) {
                  // Jika terjadi error, tampilkan pesan error
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                } else {
                  // Ketika data sudah tersedia, tampilkan ListView
                  final ListPatrolModel data = snapshot.data;
                  // List<TodoModel> dataTodo =
                  //     journals?.map((e) => TodoModel.fromMap(e)).toList() ?? [];
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      final dataPatrol = data.data[index];
                      String inputDate = dataPatrol.date;
                      // DateTime date = DateFormat('yyyyMMdd').parse(inputDate);
                      // String dateFormat = DateFormat('dd-MM-yyyy').format(date);

                      return InkWell(
                        onTap: () {
                          context.push(DetailOHSE(data: dataPatrol));
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "${dataPatrol.numberPatrol} - ${dataPatrol.kategori}",
                                        style: const TextStyle(
                                            color: Colors.blue)),
                                    // Text(dataPatrol.levelPatrol!),
                                    Text(dataPatrol.status,
                                        style: const TextStyle(
                                            color: Colors.black)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            const Icon(Icons.pin),
                                            Text(dataPatrol.area,
                                                style: const TextStyle(
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            const Icon(Icons.location_city),
                                            Expanded(
                                              child: Text(dataPatrol.subArea,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      color: Colors.black)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            const Icon(Icons.pin),
                                            Text(inputDate,
                                                style: const TextStyle(
                                                    color: Colors.black)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            const Icon(Icons.location_city),
                                            Expanded(
                                              child: Text(dataPatrol.note,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      color: Colors.black)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              })
        ],
      ),
    );
  }
}
