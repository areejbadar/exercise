// import 'package:flutter/material.dart';
// import 'src/screens/exercise_list.dart';
// import 'src/models/exercise_model.dart';

// void main() {
//   runApp(MaterialApp(home: ExerciseListScreen()));
// }

import 'package:flutter/material.dart';
import 'package:exercise/src/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise App',
      theme: ThemeData(
        primaryColorDark: Color(0xFF1E4C40),
        primaryColorLight: Color(0xFFA8C28C),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}

// import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// import 'package:exercise/src/screens/splash_screen.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // Initialize Firebase asynchronously
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize Firebase in future builder
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return MaterialApp(
//             home: Scaffold(
//               body: Center(
//                 child: Text(
//                   'Error initializing Firebase: ${snapshot.error.toString()}',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           );
//         }

//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return ExerciseApp();
//         }

//         // Show a loading indicator while waiting for Firebase to initialize
//         return MaterialApp(
//           home: Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class ExerciseApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Exercise App',
//       theme: ThemeData(
//         primaryColorDark: Color(0xFF1E4C40),
//         primaryColorLight: Color(0xFFA8C28C),
//         useMaterial3: true,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Splash_Screen(), // Replace with your starting screen
//     );
//   }
// }
