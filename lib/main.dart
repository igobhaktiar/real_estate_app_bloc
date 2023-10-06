import 'package:asc_test/auth/main_auth.dart';
import 'package:asc_test/data/bloc/bloc/auth_bloc.dart';
import 'package:asc_test/pages/home_page.dart';
import 'package:asc_test/pages/login_page.dart';
import 'package:asc_test/pages/signup_page.dart';
import 'package:asc_test/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:asc_test/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'bloc/navigation/navigation_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MainAuth(),
        '/login': (context) => LoginPage(
              show: () {},
            ),
        '/home': (context) => const HomePage(),
        '/signUp': (context) => SignUp(
              show: () {},
            ),
      },
      initialRoute: '/',
    );
  }
}
