import 'package:beep_aplication/constants/colors.dart';
import 'package:beep_aplication/screens/menu.dart';
import 'package:beep_aplication/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final user = signInWithGoogle();

  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      signInWithGoogle();
    } else {
      print('$user is signed in!');
    }
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beep',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: FontColors.primaryColor),
        useMaterial3: true,
        scaffoldBackgroundColor: FontColors.secondaryColor,
      ),
      home: const MyHomePage(title: 'Beep'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: FontColors.primaryColor,

          title: Center(
              child: Text(title,
                  style: const TextStyle(color: FontColors.extraColor))),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.home, color: FontColors.extraColor))
            ,
            Container(padding: const EdgeInsets.all(15),child: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.network(
                      FirebaseAuth.instance.currentUser?.photoURL ?? "",
                      fit: BoxFit.cover)),
            ),)

          ],
        ),
        body: Menu());
  }
}
