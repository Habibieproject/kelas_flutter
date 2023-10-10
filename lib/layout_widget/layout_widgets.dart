import 'package:flutter/material.dart';
import 'package:kelas_flutter/utils/constant.dart';
import 'package:kelas_flutter/layout_widget/widget/column.dart';
import 'package:kelas_flutter/layout_widget/widget/expanded.dart';
import 'package:kelas_flutter/layout_widget/widget/expanded_vertical.dart';
import 'package:kelas_flutter/layout_widget/widget/gridview.dart';
import 'package:kelas_flutter/layout_widget/widget/listview.dart';
import 'package:kelas_flutter/layout_widget/widget/row.dart';
import 'package:kelas_flutter/layout_widget/widget/stack.dart';
import 'package:google_fonts/google_fonts.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.exit_to_app)),
        title: const Text("Layout Screen"),
        backgroundColor: Colors.amber,
        actions: const [Icon(Icons.favorite)],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.amber,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text('Home'),
      //         onTap: () {
      //           // Tambahkan aksi yang diinginkan ketika item Home diklik
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.settings),
      //         title: const Text('Settings'),
      //         onTap: () {
      //           // Tambahkan aksi yang diinginkan ketika item Settings diklik
      //         },
      //       ),
      //       // Tambahkan item-menu lain sesuai kebutuhan
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(children: [
            Text("Column",
                style: AppStyle.style1.copyWith(
                  fontSize: 25,
                )),
            const ColumnWidget(),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Row",
              style: GoogleFonts.amiko(),
            ),
            const RowWidget(),
            const SizedBox(
              height: 8,
            ),
            const Text("Expanded"),
            const ExpandedWidget(),
            const SizedBox(
              height: 8,
            ),
            const Text("Expanded"),
            const SizedBox(height: 200, child: ExpandedVerticalWidget()),
            const SizedBox(
              height: 8,
            ),
            const Text("ListView"),
            const SizedBox(height: 50, child: ListViewWidget()),
            const SizedBox(
              height: 8,
            ),
            const Text("Stack"),
            const StackWidget(),
            const Text("GridView"),
            const GridViewWidget(),
          ]),
        ),
      ),
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               widget.title,
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
