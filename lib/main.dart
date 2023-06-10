import 'package:beep_aplication/constants/colors.dart';
import 'package:beep_aplication/screens/form.dart';
import 'package:beep_aplication/screens/list.dart';
import 'package:beep_aplication/screens/menu.dart';
import 'package:beep_aplication/services/auth.dart';
import 'package:beep_aplication/widgets/myAppBar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
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
      home: ChangeNotifierProvider<ScreenProvider>.value(
        value: ScreenProvider(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _screen = <Widget>[const Menu(), const List(), const BeepForm()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: FontColors.primaryColor,
          flexibleSpace: const MyAppBar(
            title: "Beep",
          )),
      body: Consumer<ScreenProvider>(builder: (_, value, child) {
        return _screen[value.getScreen];
      }),
    );
  }
}

class ScreenProvider extends ChangeNotifier {
  int _screen = 0;

  int get getScreen {
    return _screen;
  }

  void setScreen(int value) {
    _screen = value;
    notifyListeners();
  }

}
