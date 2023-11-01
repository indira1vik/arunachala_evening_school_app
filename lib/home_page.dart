// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     const MaterialApp(
//       home: HomePage(),
//     ),
//   );
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final statusBarHeight = MediaQuery.of(context).padding.top;
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: statusBarHeight),
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF8A2387),
//               Color(0xFFE94057),
//               Color(0xFFF27121),
//             ],
//           ),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Center(
//                 child: Text(
//                   "Welcome to Home Page",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//
//             const SizedBox(
//               height: 250,
//               child: ImageSlider(),
//             ),
//
//             const SizedBox(height: 20),
//
//             Center( // Center the container vertically
//               child: Container(
//                 height: 290,
//                 width: 280,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     const SizedBox(height: 20),
//                     // "Student" button
//                     GestureDetector(
//                       onTap: () {
//                         // Handle the "Student" button tap
//                       },
//                       child: Container(
//                         alignment: Alignment.center,
//                         width: 250,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           gradient: const LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [
//                               Color(0xFF8A2387),
//                               Color(0xFFE94057),
//                               Color(0xFFF27121),
//                             ],
//                           ),
//                         ),
//                         child: const Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Text(
//                             'Student',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10), // Add spacing between buttons
//
//                     // "Teacher" button
//                     GestureDetector(
//                       onTap: () {
//                         // Handle the "Teacher" button tap
//                       },
//                       child: Container(
//                         alignment: Alignment.center,
//                         width: 250,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           gradient: const LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [
//                               Color(0xFF8A2387),
//                               Color(0xFFE94057),
//                               Color(0xFFF27121),
//                             ],
//                           ),
//                         ),
//                         child: const Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Text(
//                             'Teacher',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10), // Add spacing between buttons
//
//                     // "Attendance Tracking" button
//                     GestureDetector(
//                       onTap: () {
//                         // Handle the "Attendance Tracking" button tap
//                       },
//                       child: Container(
//                         alignment: Alignment.center,
//                         width: 250,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           gradient: const LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [
//                               Color(0xFF8A2387),
//                               Color(0xFFE94057),
//                               Color(0xFFF27121),
//                             ],
//                           ),
//                         ),
//                         child: const Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Text(
//                             'Attendance Tracking',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ImageSlider extends StatefulWidget {
//   const ImageSlider({super.key});
//   @override
//   _ImageSliderState createState() => _ImageSliderState();
// }
//
// class _ImageSliderState extends State<ImageSlider> {
//   late PageController _pageController;
//   int _currentPage = 0;
//   List<String> images = [
//     "images/books.jpg",
//     "images/s_s.jpg",
//     "images/b_s.jpg",
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(
//       initialPage: _currentPage,
//       viewportFraction: 0.8,
//     );
//
//     _startAutoPlay();
//   }
//
//   void _startAutoPlay() {
//     Future.delayed(const Duration(seconds: 3)).then((value) {
//       if (_currentPage < images.length - 1) {
//         _currentPage++;
//       } else {
//         _currentPage = 0;
//       }
//       _pageController.animateToPage(
//         _currentPage,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//       _startAutoPlay();
//     });
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       child: PageView.builder(
//         controller: _pageController,
//         itemCount: images.length,
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 4.0,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10.0),
//               child: Image(
//                 image: AssetImage(images[index]),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:trialone/student_form.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Home Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: statusBarHeight),
        child: const Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ImageSlider(),
            ),
          ],
        ),
      ),
      drawer: Sidebar(), // Add the sidebar to the Scaffold
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  late PageController _pageController;
  int _currentPage = 0;
  List<String> images = [
    "images/books.jpg",
    "images/s_s.jpg",
    "images/b_s.jpg",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.8,
    );

    _startAutoPlay();
  }

  void _startAutoPlay() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _startAutoPlay();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: _pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Student'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const StudentForm()));
            },
          ),
          ListTile(
            title: const Text('Teacher'),
            onTap: () {
              // Navigate to a new page when Link 2 is tapped
            },
          ),
        ],
      ),
    );
  }
}
