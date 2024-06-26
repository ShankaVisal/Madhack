import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/Applicant/homeScreen.dart';
import 'package:jobfinder/Controllers/firebase_options.dart';
import 'package:jobfinder/Controllers/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 1, 20, 159)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
