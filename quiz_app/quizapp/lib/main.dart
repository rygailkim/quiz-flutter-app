import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Welcome to Flutter'),
//         ),
//         body: const Center(
//           child: Text('Hello World'),
//         ),
//       ),
//     );
//   }
// }

// https://stackoverflow.com/questions/63492211/no-firebase-app-default-has-been-created-call-firebase-initializeapp-in

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _AppState();
// }

// class _AppState extends State<MyApp> {
//   /// The future is part of the state of our widget. We should not call `initializeApp`
//   /// directly inside [build].
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return MaterialApp(
//               title: 'Welcome to Flutter',
//               home: Scaffold(
//                 appBar: AppBar(
//                   title: const Text('Welcome to Flutter'),
//                 ),
//                 body: const Center(
//                   child: Text('Error'),
//                 ),
//               ));
//         }

//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return MaterialApp(
//               title: 'Welcome to Flutter',
//               home: Scaffold(
//                 appBar: AppBar(
//                   title: const Text('Welcome to Flutter'),
//                 ),
//                 body: const Center(
//                   child: Text('Hello World'),
//                 ),
//               ));
//         }

//         // Otherwise, show something whilst waiting for initialization to complete
//         return MaterialApp(
//             title: 'Welcome to Flutter',
//             home: Scaffold(
//               appBar: AppBar(
//                 title: const Text('Welcome to Flutter'),
//               ),
//               body: const Center(
//                 child: Text('Loading'),
//               ),
//             ));
//       },
//     );
//   }
// }

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done ||
            snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
              title: 'Welcome to Flutter',
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Welcome to Flutter'),
                ),
                body: const Center(
                  child: Text('Finally'),
                ),
              ));
        }

        // Check for errors
        if (snapshot.hasError) {
          print('error');
          return MaterialApp(
              title: 'Welcome to Flutter',
              home: Scaffold(
                appBar: AppBar(
                  title: const Text('Welcome to Flutter'),
                ),
                body: const Center(
                  child: Text('Error'),
                ),
              ));
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MaterialApp(
            title: 'Welcome to Flutter',
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Welcome to Flutter'),
              ),
              body: const Center(
                child: Text('Loading'),
              ),
            ));
      },
    );
  }
}
