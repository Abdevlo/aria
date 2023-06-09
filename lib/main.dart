import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
import 'objectgestureplacement.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialPage(),
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          return MaterialPageRoute(builder: (context) => SecondPage());
        }
        return null;
      },
    );
  }
}

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/logo.png',
              width: 150,
              height: 50,
            ),
            const Text(
              'Augmented Reality',
              style: TextStyle(
                fontFamily: 'NexaHeavy',
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            const Text(
              'The Future is here',
              style: TextStyle(
                fontFamily: 'Nexa',
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.transparent, 
      appBar: AppBar(
        title: const Text(
          'Experience RealAR',
          style: TextStyle(
            fontFamily: 'NexaHeavy',
            fontSize: 28,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        backgroundColor: Colors
            .transparent, 
        elevation: 0, 
      ),
      // body: const Center(
      //   child: Text(
      //     'This is the second page',
      //     style: TextStyle(
      //       fontFamily: 'Nexa',
      //       fontSize: 18,
      //       color: Color.fromARGB(255, 255, 255, 255),
      //     ),
      //   ),
      // ),
      body: ObjectGesturesWidget(), // Replace the Center widget with ObjectGesturesWidget
    );
  }
}

// class SecondPage extends StatefulWidget {
//   @override
//   _SecondPageState createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     _setupCamera();
//   }

//   Future<void> _setupCamera() async {
//     final cameras = await availableCameras();
//     final firstCamera = cameras.first;

//     _controller = CameraController(firstCamera, ResolutionPreset.max);
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<void>(
//       future: _initializeControllerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return Scaffold(
//             backgroundColor: Colors.transparent,
//             appBar: AppBar(
//               title: const Text(
//                 'Experience Reality',
//                 style: TextStyle(
//                   fontFamily: 'NexaHeavy',
//                   fontSize: 28,
//                   color: Color.fromARGB(255, 255, 255, 255),
//                 ),
//               ),
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//             ),
//             body: Center(
//               child: CameraPreview(_controller),  
//             ),
//           );
//         } else {
//           return Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//       },
//     );
//   }
// }
