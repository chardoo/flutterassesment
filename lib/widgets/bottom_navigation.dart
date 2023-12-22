// import 'package:flutter/material.dart';

// class MyWidget extends StatefulWidget {
//    MyWidget({super.key, required this.selectedTab});
//   int selectedTab = 0;
//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//         currentIndex: widget.selectedTab,
//         onTap: (index) => _changeTab(index),
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey,
//         items: [
//           const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           const BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
//           const BottomNavigationBarItem(
//               icon: Icon(Icons.grid_3x3_outlined), label: "Product"),
//           const BottomNavigationBarItem(
//               icon: Icon(Icons.contact_mail), label: "Contact"),
//           const BottomNavigationBarItem(
//               icon: Icon(Icons.settings), label: "Settings"),
//         ],
//       );
//   }
// }