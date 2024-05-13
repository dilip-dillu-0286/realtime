// import 'package:flutter/material.dart';
// import 'responsive.dart';

// class drawer extends StatefulWidget {
//   const drawer({super.key});

//   @override
//   State<drawer> createState() => _drawerState();
// }

// class _drawerState extends State<drawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     child: Column(
//                       children: [
//                         DrawerHeader(child: Text("Menu")),
//                         ListTile(
//                           leading: Icon(Icons.dashboard),
//                           title: Text("Dashboard"),
//                           onTap: () {},
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.health_and_safety),
//                           title: Text("Doctor"),
//                           onTap: () {},
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 5,
//                   child: Container(
//                     color: Colors.blue,
//                     width: MediaQuery.of(context).size.width,
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
