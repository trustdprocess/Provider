// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../screen/provider.dart';

// class CounterApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print("build");

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Count:',
//               style: TextStyle(fontSize: 24),
//             ),
//             Consumer<Counter>(
//               builder: (context, counter, child) {
//                 return Text(
//                   counter.count.toString(),
//                   style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () =>
//             Provider.of<Counter>(context, listen: false).increment(),
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
